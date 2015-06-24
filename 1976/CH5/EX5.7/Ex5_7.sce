
//To determine the Voltage Required and Current Drawn
//Page 299
clc;
clear;
t=2*(10^-2); //Thickness
A=150*(10^-4); //Area of the slab
Er=4; //Relative Permittivity
pf=0.04; //Power Factor
f=30*(10^6); //Frequency of supply
w=2*%pi*f; //Angular Frequency
P=200; //Power Required
Eo=8.854*(10^-12); //Permittivity of free space

C=Er*Eo*A/t; //Capacitance
Xc=1/(C*w); //Capacitative Reactance
phi=acosd(pf); //power factor angle
R=tand(phi)*Xc; //Resistance
V=sqrt(P*R); //Voltage
I1=V/R; //Current
Ic=V/Xc; //Curent through the Capacitor
It=sqrt((I1^2)+(Ic^2)); //Total Current

Vn=600; //Limited Voltage
Rn=(Vn^2)/P; //New Resistance
wn=tand(phi)/(C*Rn); //New Angular Frequency
fn=wn/(2*%pi); //New Frequnency

printf('The Current And Voltage are %g A and %g V respectively\n',It,V)
printf('For the New Voltage the frequency is %g MHz\n',(fn/(10^6)))
