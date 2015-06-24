clear;
clc;
//Example 17.2
Vx=-0.7;
Vy=Vx;
Vbe=0.7;
V2=-5.2;
Re=1.180;
vE=Vx-Vbe;
printf('\nemitter voltage =%.2fV\n',vE)
iE=(vE-V2)/Re;
printf('\nemitter current=%.2f mA\n',iE)
Icxy=iE;
vo1=-0.7;
Rc1=-vo1/Icxy;
printf('\nRc1=%.2f KOhm\n',Rc1)
Vnor=vo1-Vbe;
printf('\nNOR output logic 0 value=%.2f V\n',Vnor)
Vr=(vo1+Vnor)/2;
vE=Vr-Vbe;
printf('\nvE=%.2f V\n',vE)
iE=(vE-V2)/Re;
printf('\niE=%.2f mA\n',iE)
vo2=-0.7;
iC2=iE;
Rc2=-vo2/iC2;
printf('\nRc2=%.2f KOhm\n',Rc2)
Vor=vo2-Vbe;
printf('\nOR logic 0 value is=%.2f V\n',Vor)
