// Example 1.7

clear; clc; close;

format('v',6);
// Given data
P=4;//No. of poles
f=50;//in Hz
Kdash=4;//stator turns by rotor turn
R2=0.01;//in ohm
X2=0.1;//in ohm
E1_line=400;//in volt

//Calculations
K=1/Kdash;//rotor turns by stator turns
Ns=120*f/P;//in rpm
E1ph=E1_line/sqrt(3);//
//Formula : E2ph/E1ph=K
E2ph=E1ph*K;//in volt
//(i) at start S=1
ns=Ns/60;//in rps
K=3/2/%pi/ns;
Tst=K*E2ph^2*R2/(R2^2+X2^2);//in N-m
disp(Tst,"(i) Starting Torque in N-m : ");
//part (ii) 
Sm=R2/X2;//slip for max torque
disp(Sm*100,"(ii) Slip at which max torque devloped in % : ");
//Part (iii)
N=Ns*(1-Sm);//in rpm
disp(N,"(iii) Speed at which max torque occur in rpm : ");
//Part (iv)
Tm=K*E2ph^2/2/X2;//in N-m
disp(Tm,"Maximum  torque in N-m : ");
//Part (v)
Sf=4;//in %
Sf=Sf/100;//slip
Tfl=K*Sf*E2ph^2*R2/(R2^2+(Sf*X2)^2);//in N-m
disp(Tfl,"(v) Full load Torque devloped in N-m : ");

