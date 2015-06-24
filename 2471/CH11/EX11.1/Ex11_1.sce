clear ;
clc;
// Example 11.1
printf('Example 11.1\n\n');
printf('Page No. 308\n\n');

//given
V = 205;// Flow rate in m^3
T1 = 74;// in degree celcius
T2 = 10;// in degree celcius
m = 1000;// Steam in kg
p = 950;// Density of steam in kg/m^3
C = 85;// Cost in Pound per m^3
C_V = 43.3*10^6;// Calorific value in J/kg
Cp = 4.18*10^3;// heat capacity of water J/kg-K
h = 2.33*10^6;// Heat of the steam in J/kg
n = 0.65;// Average bolier efficiency

S_cost = ((m*h*C)/(C_V*p*n));// Steam cost in Pound per  1000 kg
E_save = V*m*(T1 - T2)*Cp;// Energy saving in J per day
S_save = E_save/h;// in kg per day
printf('the steam saving is %.0f kg per day \n',S_save)
G_save = (S_cost*S_save)/m;// Pound per day
printf('The gross saving is %.0f Pound per day per year',G_save)
