//Exa 2.10
clc;
clear;
close;
//Given data : 
f=50;//in Hz
R2=0.2;//in ohm
X2=2;//im ohm
E2=60;//in volt
E2perphase=E2/sqrt(3);//in volt
//case (i) : S=1 
S=1;//unitless
Z2=sqrt(R2^2+(S*X2)^2);
I2=E2perphase*S/Z2;//in Ampere
disp(I2,"At standstill : Rotor current in Ampere : ");
//case (ii) : S=0.1 
S=0.1;//unitless
Z2=sqrt(R2^2+(S*X2)^2);
I2=E2perphase*S/Z2;//in Ampere
disp(I2,"for 10% slip : Rotor current in Ampere : ");
//case (iii) : S=0.05 
S=0.05;//unitless
Z2=sqrt(R2^2+(S*X2)^2);
I2=E2perphase*S/Z2;//in Ampere
disp(I2,"for 5% slip : Rotor current in Ampere : ");
//case (iv) : S=0.01 
S=0.01;//unitless
Z2=sqrt(R2^2+(S*X2)^2);
I2=E2perphase*S/Z2;//in Ampere
disp(I2,"for 1% slip : Rotor current in Ampere : ");
//Note : Answer in the book is wrong for S=0.05 and S=0.01