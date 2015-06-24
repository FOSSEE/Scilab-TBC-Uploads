//clc()
Nn2 = 1;//kmol/s ( basis - feed conisting of 1 kmol of N2  and 3 kmol of H2 )
Nh2 = 3;//kmol/s
//let x be the fraction converted 
T1 = 700;//K
Hr1 = -94.2;//kJ/mol
//heat liberated = Hr1 * x
//Product consists of 2x kmol NH3, (1-x)kmol N2, and 3(1-x)kmol Hydrogen
T2 = 800;//K
Hn2 = 0.03;//kJ/molK
Hh2 = 0.0289;//kJ/molK
Hnh3 = 0.0492;//kJ/molK
//H2 = (1-x)*0.03*10^3 * 100 + 3*(1-x)*0.0289*1000*100 + 2*x*0.0492*1000*100
//H2 = 11.67*1000 - 1.83*10^3*x kJ
//reaction is adiabatic, hence, H1 = H2
//solving this we get,
x = 0.1215;
Convmax = x * 100;
disp("%",Convmax,"The maximum conversion for nitrogen should be ")