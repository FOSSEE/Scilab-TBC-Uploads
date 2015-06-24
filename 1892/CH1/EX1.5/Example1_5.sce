// Example 1.5

clear; clc; close;

format('v',6);
// Given data
P=4;//No. of poles
f=50;//in Hz
R2=0.2;//in ohm
X2=1;//in ohm
N=1440;//in rpm
E2_line=120;//in volt


//Calculations
E2ph=E2_line/sqrt(3);//
cosfi_2=R2/sqrt(R2^2+X2^2);//lagging power factor
I2=E2ph/sqrt(R2^2+X2^2);//in Ampere/phase
disp(cosfi_2,"(i) Rotor power factor(lagging) : ");
disp(I2,"(i) Rotor Current in Ampere per phase: ");
Ns=120*f/P;//in rpm
S=(Ns-N)/Ns;//Slip
cosfi_2r=R2/sqrt(R2^2+(S*X2)^2);//lagging power factor
I2r=S*E2ph/sqrt(R2^2+(S*X2)^2);//in Ampere
disp(cosfi_2r,"(ii) Rotor power factor(lagging) : ");
disp(I2r,"(ii) Rotor Current in Ampere : ");
