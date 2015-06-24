// Example 1.28

clear; clc; close;
format('v',7);
// Given data
V0=400;//in volt
f=50;//in Hz
P=10;//no. of poles
R1=1.75;//in ohm
X1=5.5;//in ohm
R2dash=2.25;//in ohm
X2dash=6.6;//in ohm
I0=3.8;//in Ampere
W0=310;//in watts
S=4;//in %

//Calculations
S=S/100;//slip in ratio
//Formula : W0=sqrt(3)*V0*I0*cos_fi0
cos_fi0=W0/sqrt(3)/V0/I0;//power factor
sin_fi0=sind(acosd(cos_fi0));
Ic=I0*cos_fi0;//in Ampere
Im=I0*sin_fi0;//in Ampere
Vph=V0/sqrt(3);//in Volt
R0=Vph/Ic;//in ohm
X0=Vph/Im;//in ohm
Ns=120*f/P;//in rpm
RLdash=R2dash*(1-S)/S;//in ohm
R1e=R1+R2dash;//in ohm
X1e=X1+X2dash;//in ohm
I2rdash=Vph/(R1e+RLdash+%i*X1e);//in Ampere
disp(I2rdash,"Rotor Current in Ampere : ");
I0_bar=Ic-%i*Im;//in Ampere
I1_bar=I0_bar+I2rdash;//Supply current in Ampere
disp(I1_bar,"Supply Current in Ampere : ");
cosfi=cosd(atand(imag(I1_bar)/real(I1_bar)));//Lagging power factor
disp(cosfi,"Power factor(lagging) : ");
Pc=3*abs(I2rdash)^2*R2dash;//in watts
//Formula : P2:Pc:Pm=1:S:1-S
Pm=Pc*(1-S)/S;////in watts
disp(Pm,"Mechanical power devloped in N-m : ");
N=Ns*(1-S);//in rpm
w=2*%pi*N/60;//in rad/sec
T=Pm/w;//in N-m
disp(T,"Gross load tporque in N-m : ");
