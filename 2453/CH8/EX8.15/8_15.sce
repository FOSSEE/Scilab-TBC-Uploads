//To calculate the Hall voltage
RH = 3.66*10^-4;     //Hall coefficient, m^3/coulomb
I = 10^-2;      //current, amp
B = 0.5;      //magnetic field, Wb/m^2
t = 1;       //thickness, mm
t = t*10^-3;     //thickness, m
VH = RH*I*B/t;      //Hall voltage, V
VH = VH*10^3;      //Hall voltage, mV
printf("Hall voltage developed is %5.2f mV",VH);
