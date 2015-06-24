
clc;
clear;
//Example 4.13
D1=250  //Inner sphere idameter[mm]
D1=D1/1000  //Outer diameter [m]
D2=350  //[mm]
D2=D2/1000  //[m]
sigma=5.67*10^-8    //W/(sq m.K^4)
A1=%pi*D1^2 //[sq m]
A2=%pi*D2^2 //[sq m]
T1=76   //[K]
T2=300  //[K]
e1=0.04;
e2=e1;
Q=sigma*A1*(T1^4-T2^4)/((1/e1)+(A1/A2)*((1/e2)-1))   //[W]
Q=-2.45     //Approximate
Q=abs(Q)    //[W]
Q=Q*3600/1000   //[kJ/h]
lambda=200  //kJ/kg
Rate=Q/lambda   //[kg/h]
printf("\n Rate of evaporation is %f kg/h(approx)",Rate);
