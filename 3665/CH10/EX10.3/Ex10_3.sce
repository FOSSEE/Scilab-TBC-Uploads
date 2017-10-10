clc//
//
//

//Variable declaration
epsilon_r=2.56;
epsilon_R=2.65*0.7*10^-4;
tan_delta=0.7*10^-4;   
A=8*10^-4;    //area(m^2)
d=0.08*10^-3;    //diameter(m)
f=1*10^6;    //frequency(Hz)
epsilon0=8.85*10^-12;

//Calculation
Rp=d/(2*%pi*f*epsilon0*epsilon_R*A);    //parallel loss resistance(ohm)
Cp=A*epsilon0*epsilon_r/d;     //parallel loss capacitance(Farad)

//Result
printf("\n parallel loss resistance is %0.0f ohm",Rp/10^6)
printf("\n answer varies due to rounding off errors")
printf("\n parallel loss capacitance is %0.2f *10^-12 Farad",Cp*10^12)
