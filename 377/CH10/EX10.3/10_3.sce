disp("Vbe(T)=Vbe(25)-(αt*(T-25))");
V25=0.7;
a=2.2*10^-3;  //say a=αt
T=50;
V50=V25-(a*(T-25));
printf('\n The Base to emitter voltage at 50 deg.C is %fV',V50);