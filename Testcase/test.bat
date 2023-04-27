

set exclude_file=ccc.robot
set output_dir=results

for %%f in (*.robot) do (
    if /i not "%%~nf"=="%exclude_file%" (
        robot -d %output_dir% "%%f"
    )
)