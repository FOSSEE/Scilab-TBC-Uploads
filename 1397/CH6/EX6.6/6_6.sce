//clc();
clear;
//To calculate the percentage of volume change
T=910;         //temperature in C
r1=1.258;      //initial atomic radius in Armstrong
r2=1.292;      //latter atomic radius in Armstrong
a1=(4*r1)/sqrt(3);    //lattice constant in BCC structure
Vu1=a1^3;    //volume of unit cell of BCC
n1=2;
V1=Vu1/n1;
disp(V1);
a2=2*sqrt(2)*r2;    //lattice constant in FCC structure
Vu2=a2^3;    //volume of unit cell of FCC
n2=4;
V2=Vu2/n2;
disp(V2);
PV=(V1-V2)*100/V2;
printf("percentage volume change is")
disp(PV);
