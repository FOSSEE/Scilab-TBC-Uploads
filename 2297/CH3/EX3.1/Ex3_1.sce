// Example 3.1;amper-turns
clc;
close;
clear;
// given :
format('v',7)
bt=[2;2.5;3.0];//making equations from Table
H=[400 ;600;800];//making equations from Tble
fsl=10^-3;//Flux in Wb
cal=4*10^-4;//area in m^2
fdl=fsl/cal;//magnetic field in Tesla
hl=H(2);//AT/m 
pll=0.57;//lenth in meter (path length 2345)
at2345=pll*hl;//ampere turns
fcl=2*10^-3;//magnetic field in Wb
fdcl=fcl/cal;//in Tesla
hcl=H(1);//in AT/m
lcl=169;//length in mm
atcl=(lcl*10^-3)*hcl;//ampere turns
l=1;//length mm
Hl=((4*%pi))*10^-7;//AT/m
atrg=fcl/Hl;//AT
tat=at2345+atcl+atrg;//total ampere turns
disp(tat,"total ampere-turns required is, (AT)=")

