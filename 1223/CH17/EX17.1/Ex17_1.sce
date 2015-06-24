clear;
clc;
//Example 17.1
V1=5;
V2=-5;
Rc1=1;
Rc2=Rc1;
Rc=Rc1;
Re=2.150;
v2=0;
//for v1=0
vE=-0.7;
iE=(vE-V2)/Re;
printf('\nemitter current=%.3f mA\n',iE)
iC=1;
Vcc=5;
vo1=Vcc-iC*Rc;
printf('\nvo1=vo2=%.f V\n',vo1)
//for v2=-1
vE=-0.7;
iE=2;
iC2=2;
vo1=5;
vo2=Vcc-iC2*Rc;
printf('\nvo2=%.2f V\n',vo2)
v1=1;
Vbe=0.7;
vE=v1-Vbe;
iE=(vE-V2)/Re;
printf('\nemitter current =%.3fmA\n',iE)
iC1=iE;
vo1=Vcc-iC1*Rc;
printf('\nvo1=%.2f V\n',vo1)
vo2=Vcc
