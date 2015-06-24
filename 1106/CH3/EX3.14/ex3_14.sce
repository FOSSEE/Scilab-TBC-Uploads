// Example 3.14, page no-135
clear
clc

slew=0.5
riset=4
printf('\nVo is greater than 1V')
Vswing=(0.9-0.1)*5
slewreq=Vswing/riset
printf('\nSlew Rate Required= %d V/us',slewreq)

