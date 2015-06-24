clear ;
clc;
// Example 6.11
printf('Example 6.11\n\n');
printf('Page No. 167\n\n');

// given
m = 10*10^3;// Production of boiler in kg/h
X = 0.95;//Dryness fraction
P = 10;//Pressure ib bar
T_fw = 95;// Feed water temperature in degree celcius
T_mf = 230;// Mean flue gae temperature in degree celcius
T_mb = 25;// Mean boiler house temperature in degree celcius
Coal_c = 900;// Coal consumption in kg/h
A = 0.08;// Ash content in coal
C_c = 0.15;//carbon content in coal
CV_coal = 33.50*10^6;// Calorific value of coal in J
M = 28;// Mass of flue gas per kg coal in kg
Cp = 1.05*10^3;// Mean Specific heat capacity of the flue gas in J/kg-K
CV_c = 34*10^6;// Calorific value of carbon in J/kg

M_s = m/Coal_c;// Mass of steam produced per kg coal in kg
H_w = (M_s*(763+(X*2013) - 398)*10^3)/10^6;// Heat absorbed by water per kg coal in 10^6 J(from steam table at given pressure and dryness fraction)
H_f = (M*Cp*(T_mf - T_mb))/10^6;// Heat in flue gas in 10^6 J 
H_uc = (A*C_c*CV_c)/10^6;//Heat in unburnt carbon in 10^6 J
h_sup = (CV_coal)/10^6;// Heat supplied by coal in 10^6 J
un_acc = (h_sup - (H_w + H_f + H_uc));// unaccounted heat losses in 10^6 J
a = (h_sup/h_sup)*100;
b = (H_w/h_sup)*100;
c = (H_f/h_sup)*100;
d = (H_uc/h_sup)*100;
e = (un_acc/h_sup)*100;
T = b + c + d + e;
printf(' THERMAL BALANCE SHEET :\n\t\t\t\t 10^6 J \t percentage \n\n Heat supplied by coal \t\t %.2f \t\t %.0f\n Heat absorbed by water \t %.1f\t\t  %.1f\n Heat in flue gas \t\t  %.2f \t\t  %.0f\n Heat in unburnt carbon \t  %.2f \t\t   %.1f \n unaccounted heat losses \t  %.2f \t\t   %.1f\n TOTAL \t\t\t\t %.2f \t\t %.1f',h_sup,a,H_w,b,H_f,c,H_uc,d,un_acc,e,h_sup,T);



