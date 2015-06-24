// Example 1.35

clear; clc; close;

format('v',7);
// Given data
V=400;//in volts
P=4;//no. of Poles
f=50;//in Hz
r1=0.15;//in ohm
x1=0.44;//in ohm
r2dash=0.12;//in ohm
x2dash=0.44;//in ohm
xm=30;//in ohm
S=4;//in %

//Calculations
S=S/100;//Slip
RLdash=r2dash*(1-S)/S;//in ohm
V1=V/sqrt(3);//in volt
I2rdash=V1/(r1+r2dash+RLdash+%i*(x1+x2dash));//in Ampere
I0=V1/(%i*xm);//in Ampere
I1=I0+I2rdash;//in Ampere
disp("Stator Current in Ampere : ");
disp("Magnitude is "+string(abs(I1))+" & angle in degree is "+string(atand(imag(I1),real(I1))));
cosfi=cosd(atand(imag(I1),real(I1)));//lagging power factor
disp(cosfi,"Power factor(lagging) : ");
