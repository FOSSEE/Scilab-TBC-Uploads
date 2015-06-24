clear; clc; close;

Vcc = 8;
hfe = 110;
hie = 1.6*(10^(3));
hoe = 20*(10^(-6));
hre = 2*(10^(-4));
Rl = 4.7*(10^(3));
Rc = 4.7*(10^(3));
Rb = 470*(10^(3));
Rs = 1*(10^(3));

Zi = hie - (hfe*hre*Rl)/(1+hoe*Rl);
disp(Zi,"Input impedance using hybrid equivalent :");
disp(hie,"Input impedance using approximate model :")
Zi_b = (Rb*hie)/(Rb+hie);
disp(Zi_b,"Input impedance including Rb :");

Av = -hfe*Rl/(hie+(hie*hoe-hfe*hre)*Rl);
disp(Av,"Voltage gain using hybrid equivalent :");
Av_approx = -hfe*Rl/hie;
disp(Av_approx,"Voltage gain using approximate model :");

Ai = hfe/(1+hoe*Rl);
disp(Ai,"Current gain using hybrid equivalent :");
Ai_approx = hfe;
disp(Ai_approx,"Current gain using approximate model :");

Zo = 1/[hoe-(hfe*hre)/(hie+Rs)];
disp(Zo,"Output impedance using hybrid equivalent :");
Zo_approx = 1/hoe;
disp(Zo_approx,"Output impedance using approximate model :");
Zo_rc = (Rc*Zo)/(Rc+Zo);
disp(Zo_rc,"Output impedance including Rc & using hybrid equivalent :");
Zo_rc_approx = Rc;
disp(Zo_rc_approx,"Output impedance including Rc & using approximate model :");

