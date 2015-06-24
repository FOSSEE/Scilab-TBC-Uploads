clc;
// page no 128
// prob no 4_2_3
//Parallel tuned ckt tuned at resonant freq f=120 MHz
f=120*10^6;
c=25*10^-12;//capacitance of 12 pF
Q=30;//Q-factor of the ckt is 30
BW=10*10^3;//cahnnel BW of the receiver is 10 KHz
k=1.38*10^-23 //Boltzman constant in J/K
T=290;//Room temp
//Determination of effective noise voltage Rd apearing at i/p at room temp
 Rd=Q/(2*%pi*f*c);
 disp('kohm',Rd/1000,'The value of Rd is ');
 Vn=(4*Rd*k*T*BW)^(1/2);
disp('uV',Vn*(10^6),'The value of effective noise voltage is');