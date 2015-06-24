//AC Circuits : example 4.5 :(pg 4.6)
kf=1.2;
kp=1.5;
Vavg=10;
disp("kf=1.2");
disp("kp=1.5");
disp("Vavg=10");
disp("form factor kf=(Vrms/Vavg)");
Vrms=(kf*Vavg);
printf("\nVrms=%.f V",Vrms);
disp("peak factor kp=(Vm/Vrms)");
Vm=(kp*Vrms);
printf("\nVm=%.f V",Vm);