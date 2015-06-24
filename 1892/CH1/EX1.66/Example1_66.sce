// Example  1.66

clc;clear;close;

// Given data
format('v',7);
P=4;//no. of poles
f1=50;//in Hz
S=4;//in %
R2=1;//in ohm/phase
X2=4;//in ohm/phase

//calculations
Ns=120*f1/P;//in rpm
S=S/100;//slip
//part (a)
N=(1-S)*Ns;//in rpm
disp(N,"(a) Speed of the motor in rpm : ");
//part (b)
f2=S*f1;//in Hz
disp(f2,"(b) Frequency of rotor emf in Hz  : ");
//part (i)
Z2=R2+%i*X2;//in ohm
cosfi=cosd(atand(imag(Z2),real(Z2)));//power factor
disp(cosfi,"(i) Power factor at standstill(lag) : ");
//part (ii)
N=1400;//speed in rpm (given for this part)
S1=(Ns-N)/Ns;//slip
Z2s1=R2+%i*S1*X2;//in ohm
cosfi=cosd(atand(imag(Z2s1),real(Z2s1)));//power factor at 1400 rpm speed
disp(cosfi,"(ii) Power factor at 1400 rpm(lag) : ");
