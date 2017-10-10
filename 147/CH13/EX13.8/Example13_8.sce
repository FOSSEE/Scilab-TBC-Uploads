//Rated Power Pr, Resistance of primary winding R1,Resistance of secondary winding R2
//Primary leakage reactance X1, Secondary leakage reactance X2
//Magnetizing reactance Xm, Resistance accounting for core loss Rc
//Secondary terminal voltage V2
close();
clear;
clc;
Po = 150;//kVA
R1 = 0.2;//ohm
R2 = 2/1000;
X1 = 0.45;//ohm
X2 = 4.5/1000;
Rc = 10000;
Xm = 1550;
V2 = 240;
a = 10;
Pf =  0.8;
theta2 = -acos(Pf);
I2r = Po*1000/V2;
I2 = I2r*cos(theta2)+I2r*sin(theta2)*%i;
E1 = a*V2+ I2/a*(R1+%i*X1);
E1r = polar(E1);
E1_arg = atan(imag(E1),real(E1))*180/%pi;
Im = E1/(%i*Xm);
Ic = E1/Rc;
Icr = polar(Ic);
Io = Ic+Im;
I1 = Io+I2/a;
I1r = polar(I1);
I1_arg = atan(imag(I1),real(I1))*180/%pi;
V1 = E1 + I1*(R1+%i*X1);
V1r = polar(V1);
V1_arg = atan(imag(V1),real(V1))*180/%pi;
per_regulation = (V1r - a*V2)/(a*V2)*100;
output = Po*1000*Pf;
losses = I1r^2*R1+Icr^2*Rc+I2r^2*R2;
n = output/(output+losses)*100;
mprintf('Voltage regulation = %0.1f %%\nEfficiency = %0.1f %%',per_regulation,n);
