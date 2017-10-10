// Example 12_2
clc;funcprot(0);
// Given data
P_ta=90;// % theoretical air
// The reaction equation for theoretical air is C_4H_10+(0.9)(6.5)(O_2+3.76N_2)-->4CO_2+5H_2O+22N_2+bCO
a_1=6.5;// The stoichiometric coefficient
M_air=29;// kg/kmol
M_fuel=58;// kg/kmol

// Calculation
function[X]=atomicbalances(y)
    X(1)=y(1)+y(2)-4;
    X(2)=(2*y(1))+5+y(2)-11.7;
endfunction
y=[1 1];
z=fsolve(y,atomicbalances);
a=z(1);// mol
b=z(2);// mol
P_CO=(b/31)*100;// % CO
m_air=(P_ta/100)*a_1*(4.76)*M_air;// lbm air
m_fuel=1*M_fuel;// lbm fuel
AF=m_air/m_fuel;// The air-fuel ratio in lbm air/lbm fuel
printf("\nThe volume percentage of CO=%1.2f percentage \nThe air-fuel ratio,AF=%2.2f lbm air/lbm fuel",P_CO,AF);
