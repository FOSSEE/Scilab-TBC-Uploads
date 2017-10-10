// To calculate terminal voltage and current and efficiency

clc;
clear;

n=10; // Transformation ratio

E1=200;

R0=400;
X0=251*%i;

R1=0.16;
X1=0.7*%i;

R2=5.96; // As referred to the primary side
X2=4.44*%i; // As referred to the primary side

I1=E1/(R1+R2+X1+X2);

t1=atand(imag(I1)/real(I1));// Angle for primary current

Iw=E1/R0;
Im=E1/X0;

Ip=Iw+Im+I1;

Zl=R2+X2;

V2p=I1*Zl;// Secondary terminal voltage referred to primary side

V2=n*V2p;

t2=atand(imag(V2)/real(V2)); // Angle for V2

Po= (abs(I1)^2)*R2; // Output power

Pc=(abs(I1)^2)*R1;// Copper Loss

Pil=(abs(Iw)^2)*R0;// Iron Loss

eff= Po*100/(Po+Pc+Pil)// Efficiency

printf('a) The secondary terminal voltage = %f /_%f V \n',abs(V2),t2)
printf('b) The primary current = %f /_%f A \n',abs(I1),t1)
printf('c) The efficiency is %f percent \n',eff)
