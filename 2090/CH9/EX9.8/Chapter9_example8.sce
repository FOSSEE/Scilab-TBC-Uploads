clc
clear
//Input data
A=14.5;//The air fuel ratio
p2=0.825;//The pressure at the venturi throat in bar 
p1=1.013;//The atmospheric pressure in bar
pd=37.5;//The pressure drop to the air cleaner in mm of Hg
ma=260;//The mass flow rate of air in kg/h

//Calculations
pa=p1-p2;//Without air cleaner the depression at the throat in bar
p21=p1-(pd/750)-pa;//The throat pressure when the air cleaner is fitted in bar
pf=pa;//Pressure of fuel without air clesner in bar
pf1=p1-p21;//Pressure of the fuel with air cleaner in bar
Af=A*(pf/pf1)^(1/2);//Air fuel ratio with air cleaner 

//Output
printf(' (a) The throat pressure when the air cleaner is fitted = %3.3f bar \n (b) The air fuel ratio with the air cleaner fitted = %3.2f ',p21,Af)
