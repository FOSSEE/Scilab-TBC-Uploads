Tw = 75+273;
Ts = 5+273; // Ts = T0
m = 40;
cp = 4.2;
W = integrate('m*cp*(1-(Ts/T))','T',Ts,Tw);
Q1 = m*cp*(Tw-Ts);
UE = Q1-W;
disp("kJ",W,"Total work")
disp("kJ",Q1,"Heat released")
disp("kJ",UE,"Internal energy change")