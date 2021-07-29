set PYTHONPATH=%CD%\scripts
cd shared-data\python\
%PYTHON% setup.py bdist_wheel

dir
dir dist

for /f "tokens=* USEBACKQ" %%g in (`dir /b dist\*.whl`) do (set "whl=%%g")

%PYTHON% -m pip install dist\%whl% -vv --no-deps

