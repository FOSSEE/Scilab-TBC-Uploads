//AC Circuits : example 4.4 :pg(4.5)
pi=3.14;
Vm=200;
disp("v=200sin314t");
disp("v=Vmsin(2*pi*f*t)");
disp("(2*pi*f)=314");
f=(314/(2*pi));
printf("f=%.f Hz",f);
Vavg=((2*Vm)/pi);
Vrms=(Vm/sqrt(2));
mprintf('\nFor a sinusoidal waveform, \nVavg=(2*Vm/pi) \nVrms=(Vm/sqrt(2))');
kf=(Vrms/Vavg);
kc=(Vm/Vrms);
mprintf('\nform fator=%.2f',kf);
mprintf('\ncrest factor=%.2f',kc);
