//Finding the Peak current and energy Loss in an RC Circuit
//Example 2.4 (Page No- 48) 
clc
clear
// part (a)
//given data
R = 44;//Ohms
C = 0.1*10^-6; // F
Vc0 = 220; //V
Ip = Vc0/R;
printf('Peak diode current : %d A \n',Ip);

// part(b)
W = 0.5*C*Vc0^2;
W=W*10^3; // to get W in mJ
printf('Energy Dissipited is %1.2f mJ \n',W);

//part (c)
RC = R*C; // RC time constant
t=2*10^-6;//s
Vc = Vc0*exp(-t/RC);
printf('Capacitor voltage : %3.2f V',Vc);
