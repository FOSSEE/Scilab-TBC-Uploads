// Example 1.47

clear; clc; close;

format('v',6);
// Given data
P=4;//no. of poles
V2=415;//in volt
f=50;//in Hz
E2ByE1=1.75;//stator to rotor turn ratio
Z2=0.1+%i*0.9;//in ohm
I2=60;//in Ampere at start


X2=1;//in ohm per phase
Sf=4;//full load slip in %
N2=1260;//reduced speed in rpm

//Calculations
R2=real(Z2);//in ohm
X2=imag(Z2);//in ohm
E1ph=V2/sqrt(3);//in volt
E2ph=E1ph/E2ByE1;//in Volt
//Formula : I2=E2ph/sqrt(R2dash^2+X2^2)
R2dash=sqrt((E2ph/I2)^2-X2^2);//in ohm
Rex=R2dash-R2;//in ohm per phase
disp(Rex,"Extra resiatance required in ohm : ");
