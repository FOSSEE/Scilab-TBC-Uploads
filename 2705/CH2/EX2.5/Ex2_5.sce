clear;
clc;
disp('Example 2.5');



//  Given values
del_P = 154.45; // pressure difference across the die, [MN/m^2]
rho = 11360; // Density of the lead, [kg/m^3]
c = 130; // specific heat capacity of the lead, [J/kg*K]

//  solution
//  since there is no cooling and no externel work is done, so energy balane becomes
//  P1*V1+U1=P2*V2+U2 ,so
//  del_U=U2-U1=P1*V1-P2*V2

//  also, for temperature rise, del_U=m*c*t, where, m is mass; c is specific heat capacity; and t is temperature rise

//  Also given that lead is incompressible, so V1=V2=V and assuming one m^3 of lead

//  using above equations
t = del_P/(rho*c)*10^6 ;// temperature rise [C]

mprintf('\n The temperature rise of the lead is  =  %f  C\n',t);

//  End

