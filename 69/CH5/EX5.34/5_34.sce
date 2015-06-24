clear; clc; close;

hfe = 110;
hie = 1.6*(10^(3));
hoe = 20*(10^(-6));
hre = 2*(10^(-4));
Rl = 2.2*(10^(3));
Rc = 2.2*(10^(3));
R1 = 3*(10^(3));
Rs = 1*(10^(3));
disp("Common base hybrid parameters are as follows :")
hib =  hie/(1+hfe);
disp(hib,"hib :");
hrb = (hie*hoe)/(1+hfe)-hre;
disp(hrb,"hrb :");
hfb = -hfe/(1+hfe);
disp(hfb,"hfb :");
hob = hoe/(1+hfe);
disp(hob,"hob :");

Zi = hib - (hfb*hrb*Rl)/(1+hob*Rl);
disp(Zi,"Input impedance using hybrid equivalent :");
disp(hib,"Input impedance using approximate model :");
Zi_b = (R1*hib)/(R1+hib);
disp(Zi_b,"Input impedance including Rb :");

Ai = hfb/(1+hob*Rl);
disp(Ai,"Current gain using hybrid equivalent :");
Ai_approx = hfb;
disp(Ai_approx,"Current gain using approximate model :");

Av = -hfb*Rl/(hib+(hib*hob-hfb*hrb)*Rl);
disp(Av,"Voltage gain using hybrid equivalent :");
Av_approx = -hfb*Rl/hib;
disp(Av_approx,"Voltage gain using approximate model :");

Zo = 1/[hob-(hfb*hrb)/(hib+Rs)];
disp(Zo,"Output impedance using hybrid equivalent :");
Zo_approx = 1/hob;
disp(Zo_approx,"Output impedance using approximate model :");
Zo_rc = (Rc*Zo)/(Rc+Zo);
disp(Zo_rc,"Output impedance including Rc & using hybrid equivalent :");
Zo_rc_approx = Rc;
disp(Zo_rc_approx,"Output impedance including Rc & using approximate model :");

