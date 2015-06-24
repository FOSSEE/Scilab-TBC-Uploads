clc
//Initialization of variables
F16bP=1.9*10^-5 //mmol/L
ADP=1.3*10^-3  //mmol/L
ATP=11.4*10^-3  //mmol/L
F6P=8.9*10^-5  //mmol/L
k=1.2*10^3
//calculations
Q=F16bP*ADP/(F6P*ATP)
if(Q<k)
    printf("The reaction step is far from equilibrium and Q= %.3f",Q)
else
    printf("The reaction step is at equilibrium and Q= %.3f",Q)
end

