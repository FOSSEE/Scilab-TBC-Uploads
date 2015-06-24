clear;
clc;
//Example 11.1
V1=10;
V2=-10;
Iq=1;
Rc=10;
Vbe=0.7;
iC1=Iq/2;
iC2=iC1;
printf('\ncollector currents =%.2fmA\n',iC1)
Vc1=V1-iC1*Rc;
Vc2=Vc1;
printf('\ncollector voltages =%.2fV\n',Vc1)
Vcm=0;
Ve=Vcm-Vbe;
Vce1=Vc1-Ve;
printf('\ncollector emitter voltage=%.2f V\n',Vce1)
Vcm=-5;
Ve=Vcm-Vbe;
Vce1=Vc1-Ve;
printf('\ncollector emitter voltage =%.2fV\n',Vce1)
Vcm=5;
Ve=Vcm-Vbe;
Vce1=Vc1-Ve;
printf('\ncollector emitter voltage=%.2f V\n',Vce1)
