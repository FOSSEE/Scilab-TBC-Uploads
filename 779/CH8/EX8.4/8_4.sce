Ts = 273+15;
Tw1 = 95+273;
Tw2 = 35+273;
m1 = 25; m2 = 35;
cp = 4.2;
AE25 = integrate('m1*cp*(1-(Ts/T))','T',Ts,Tw1);
AE35 = integrate('m2*cp*(1-(Ts/T))','T',Ts,Tw2);
AEt = AE25 + AE35;
Tm = (m1*Tw1+m2*Tw2)/(m1+m2); // Temperature after mixing
AE60 = integrate('(m1+m2)*cp*(1-(Ts/T))','T',Ts,Tm);
AE = AEt - AE60;
disp("kJ",AE,"The decrease in the totla energy is")