//clc()
m = 1;//kg of coal burned
xc = 0.7;
xh2 = 0.055;
xn2 = 0.015;
xs = 0.03;
xo = 0.13;
xash = 0.07;
Hvap = 2370;//kJ/kg
C = 29000;//kJ/kg
Nh2 = xh2 * m / 2.016;
Nwater = Nh2;// ( amount of water formed )
mwater = Nwater * 18.016;
Hreq = mwater * Hvap;
Hnet = C - Hreq;
disp("kJ/kg",Hnet,"Net heating value of coal = ")