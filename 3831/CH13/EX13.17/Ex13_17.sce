// Example 13_17
clc;funcprot(0);
// Given data
CR=18.0;// The compression ratio
CO=2.32;// The cut off ratio
HV=45.5*10^3;// The heating value of a fuel in kJ/kg
m_fuel=3.35;// The fuel flow rate of rate in kg/s
W_B=80080;// kW
k=1.40;// The specific heat ratio

// Calculation
// (a)
n_T_disel=(1-(((CR)^-0.40)*([((CO)^k)-1]))/(k*(CO-1)))*100;// The Diesel cold ASC thermal efficiency of the engine in %
// (b)
Q_fuel=HV*m_fuel;// kW
n_T_diselact=(W_B/Q_fuel)*100;// The actual thermal efficiency of the engine in %
// (c)
n_m=(n_T_diselact/n_T_disel)*100;// The mechanical efficiency of the engine in %
printf("\n(a)The Diesel cold ASC thermal efficiency of the engine,n_T=%2.1f percentage \n(b)The actual thermal efficiency of the engine,(n_T)_Diesel actual=%2.1f percentage \n(c)The mechanical efficiency of the engine,n_m=%2.1f percentage",n_T_disel,n_T_diselact,n_m);
