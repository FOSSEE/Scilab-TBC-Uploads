// Example 13_15
clc;funcprot(0);
// Given data
CR=9/1;// The compression ratio
Qbym=20.0*10^3;// Btu/lbm
AbyF_mass=16.0/1;
T_3=60;// °F
p_3=8.00;// psia
c_va=0.172;// Btu/(lbm air.R)
D=260;// The total displacement in in^3
N=4000;// rpm
c=2;// The number of crankshaft revolutions per power stroke
W_Bout=85.0;// hp
k=1.40;// The specific heat ratio
R=0.0685;// Btu/(lbm.R)

// Calculation
// (a)
n_T_c=(1-(CR^(1-k)))*100;// %
// (b)
T_4s=(T_3+459.67)*(CR^(k-1));// R
T_max=T_4s+(Qbym/(AbyF_mass*c_va));// R
p_4s=p_3*((T_4s/(T_3+459.67))^(k/(k-1)));// psia
T_1=T_max;// R
p_max=p_4s*(T_1/T_4s);// psia
p_1=p_max;// psia
// (c)
W_Iout=((n_T_c/100)*Qbym*D*N*p_1/c)/(AbyF_mass*R*T_1*(CR-1)*12*60);// ft.lbf/s
W_Iout=W_Iout/550.0;// hp
// (d)
n_m=(W_Bout/W_Iout)*100;// The mechanical efficiency of the engine in %
// (e)
n_T_act=((n_m/100)*(n_T_c/100))*100;// The actual thermal efficiency of the engine in %
printf("\n(a)Cold ASC thermal efficiency of the engine,n_T=%2.1f percentage \n(b)Maximum pressure and temperature of the cycle,p_max=%4.0f psia & T_max=%4.0f R \n(c)Indicated power output of the engine,|W_I|_out=%3.0f hp \n(d)Mechanical efficiency of the engine,n_m=%2.1f percentage \n(e)Actual thermal efficiency of the engine,n_T=%2.1f percentage",n_T_c,p_max,T_max,W_Iout,n_m,n_T_act);
// The answer vary due to round off error

