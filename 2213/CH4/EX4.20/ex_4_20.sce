//Example 4.20//capacitance
clc;
clear;
close;
w=84;//watts
pf=0.7;//power factor
v=240;//in volts
i=(w)/(v*pf);// in amperes
rva=v*i*sqrt(1-pf^2);//relative volt-amperes 
cpf=1;//corrected power factor
rvas=v*i*sqrt(1-cpf^2);//
f=50;// in hertz
c=((rva)/(2*%pi*f*(v)^2));//in farads
disp(c*10^6,"capacitance in (micro-F) is")
