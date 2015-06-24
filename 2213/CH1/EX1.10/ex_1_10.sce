//Example 1.10 // height
clc;
clear;
close;
format('v',8)
vs=10;//secondary voltage in volts
p=400;//power drawn in kW
pf=0.6;//
is=(p*10^3)/pf;//secondary current in amperes
zs=vs/is;//impedence of secondary circuit in ohms
rs=zs*pf;//resistance of secondary circuit in ohms
res=zs*(sqrt(1-pf^2));//rectancetance of secondary circuit in ohms
x=(rs)/res;//height 
disp(x,"maximum heat will be obtained with the height of charge as 3/4 of height of hearth")
