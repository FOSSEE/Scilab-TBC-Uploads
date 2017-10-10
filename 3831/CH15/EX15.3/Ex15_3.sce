// Example 15_3
clc;funcprot(0);
// Given data
T=20.0;// °C
CO_2=7.10;// %
CO=0.800;// %
O_2=9.90;// %
N_2=82.2;// %
M_air=28.97;// lbmdry air/lbmole dry air

// Solution
// (a)
n=7.10+0.800;// Carbon (C) balance
// m=2*b
a=82.2/3.76;// Nitrogen (N2) balance
b=2*(a-(7.10+(0.800/2)+9.90));// Oxygen (O2) balance
m=2*b;// Hydrogen (H) balance
printf("\n(a)The hydrocarbon model (CnHm) of the fuel is C_%1.2fH_%2.0f",n,m);
// (b)
M_fuel=(7.90*(12))+(18.0*(1));// lbm/lbmole
Fc_C=7.90*12.0*113;// lbm C/lbm fuel
Fc_H=((9.00)*(2.016))/113;// lbmH/lbmfuel
printf("\n(b)The molecular mass of the fuel in this model,M_fuel=%3.0f lbm/lbmole \n   The fuel’s composition on a mass basis is %0.3f lbmC/lbmfuel and %0.3f lbmH/lbm fuel",M_fuel,Fc_C,Fc_H);
// (c)
n_air=21.9*(1+3.76);// The stoichiometric coefficient of the reaction
n_fuel=1;// The stoichiometric coefficient of the reaction
AF_molar=n_air/n_fuel;// moles air/mole fuel
AF_mass=AF_molar*(28.97/(M_fuel));// lbm air/lbm fuel
printf("\n(c)The air-fuel ratio on a molar and a mass basis,(A/F)_molar=%3.0f moles air/molefuel and (A/F)_mass=%2.1f lbm air/lbm fuel",AF_molar,AF_mass);
// (d)
b=7.90;// Carbon (C) balance
c=18.0;// Hydrogen (H) balance
a=b+(c/2);// Oxygen (O2) balance
d=3.76*a;// Nitrogen (N2) balance
AF_mt=(12.4*(1+3.76))/1;// mole air/mole fuel
per_ta=(AF_molar/AF_mt)*100;// The percent of theoretical air used in the actual combustion process (%)
printf("\n(d)The percentage of theoretical air used in the combustion process,Percentage of theoritical air=%3.0f percentage or %2.0f percentage excess air",per_ta,(per_ta-100));
