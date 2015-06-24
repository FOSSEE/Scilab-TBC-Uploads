T = (3754-3063)/(23.03-19.49);
P = exp(23.03-(3754/195.2));
R = 8.3143;
Lsub = R*3754;
Lvap = 3063*R;
Lfu = Lsub-Lvap;
disp("K",T,"Temperature of triple point is")
disp("mm Hg",P,"Pressure of triple point is")
disp("kJ/kg mol",Lsub,"Latent heat of sublimation is")
disp("kJ/kg mol",Lvap,"Latent heat of vapourization is")
disp("kJ/kg mol",Lfu,"Latent heat of fusion is")