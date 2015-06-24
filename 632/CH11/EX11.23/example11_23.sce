//clc()
P = 10;//kPa
T1 = 323.15;//K
T2 = 373.15;//K
T = 358.15;//K
H1 = 2592.6;//kJ/kg
H2 = 2687.5;//kJ/kg
//H by interpolation,
H = H1 + ((H2 - H1)/(T2 - T1))*(T - T1);
Hl = 697.061;//kJ/kg
Hg = 2762;//kJ/kg
//H = x*Hl + ( 1 - x )* Hg
x = (H - Hg)/(Hl - Hg) ;
Pmois = x*100;
Psteam = ( 1 - x )*100;
disp("%",Pmois,"Percentage of moisture = ")
disp("%",Psteam,"Percentage of dry saturated steam = ")