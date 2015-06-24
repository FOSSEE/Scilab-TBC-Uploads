//Page Number: 498
//Example 9.20
clc;
//Given
Cj=0.5D-12; //F
Lp=0.5D-9; //H
Irf=0.65; //A
Rl=2; //ohms
Vbd=80; //V
Idc=0.08; //A

//Resonant frequency
f=1/(2*%pi*sqrt(Cj*Lp));
disp('Hz',f,'Resonant frequency:');

//Efficiency
Pout=(Irf*Irf*Rl)/2;
Pin=Vbd*Idc;
n=(Pout*100)/Pin;
disp('%',n,'Efficiency:');
