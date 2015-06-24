//problem 2.19
clc;
clear;
close;
//given data :
format('v',5);
m=3;//no. of phase
emf=50;//in volt
E2=emf/sqrt(3);//emf/phase
R2=0.5;//in ohm/phase
X2=4.5;//in ohm/phase
//(a) Sliprings are short circuited
Z2=sqrt(R2^2+X2^2);//in oghm per phase
I2=E2/Z2;//in Ampere
disp(I2,"Rotor current per phase(Ampere) : ");
cosfi2=R2/Z2;//unitless
disp(cosfi2,"Rotor power factor : ");
//(a) Sliprings are connected to star connected rheostat
R2=4+R2;//in ohm/phase
Z2=sqrt(R2^2+X2^2);//in oghm per phase
I2=E2/Z2;//in Ampere
disp(I2,"Rotor current per phase(Ampere) : ");
cosfi2=R2/Z2;//unitless
disp(cosfi2,"Rotor power factor : ");
