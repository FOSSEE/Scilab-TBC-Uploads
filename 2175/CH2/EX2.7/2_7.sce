clc;

//for part (i)
hf=89.8;//kJ/kg
x=0.95;
h_fg=(1420-89.8);//kJ/kg
hi=hf+x*h_fg;//kJ/kg
disp("enthalpy of part (i)");
disp("kJ/kg",hi);

//for part (ii)
//ammonia heated by (60-20) K
x=40/50;
hf=1462.6;//kJ/kg
h_fg=(1597.2-1462.6);//kJ/kg
hii=hf+x*h_fg;
disp("enthalpy of part (ii)");
disp("kJ/kg",hii);
