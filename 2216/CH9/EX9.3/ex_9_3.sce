//Example 9.3:change in refractive index ,net phase shiftand Vpi
clc;
clear;
close;
format('v',6)
v=5;//kV
l=1;//cm
ez=(v*10^3)/(l*10^-2);//in V/m
no=1.51;//
r63=10.5*10^-12;//m/V
dn=((1/2)*no^3*r63*ez);//
h=550;//nm
dfi=((2*%pi*dn*l*10^-2)/(h*10^-9));//
fi=2*dfi;//
vpi=((h*10^-9)/(2*no^3*r63))*10^-3;//kV
disp(dfi,"change in refrative index is")
disp(fi,"net phase shift is")
format('v',4)
disp(vpi,"Vpi in kV is")
//refractive index and phase shift is in the form of pi in the textbook
