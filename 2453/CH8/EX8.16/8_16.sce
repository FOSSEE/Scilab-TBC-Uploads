//To calculate the Hall coefficient
Vy = 37;      //voltage, micro-V
Vy = Vy*10^-6;     //voltage, V
t = 1;     //thickness, mm
t = t*10^-3;     //thickness, m
Bz = 0.5;      //flux density, Wb/m^2
Ix = 20;     //current, mA
Ix = Ix*10^-3;     //current, A
RH = Vy*t/(Ix*Bz);     //Hall coefficient, C-1 m^3
printf("Hall coefficient of semiconductor in C-1 m^3 is");
disp(RH);
