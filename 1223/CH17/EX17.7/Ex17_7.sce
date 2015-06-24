clear;
clc;
//Example 17.7
Vcc=1.7;
Re=0.008;//mohm
Rc=0.008;//mohm
Vy=0.4;
Vbe=0.7;
Vor=Vcc//logic 1
Vor=Vcc-Vy//logic 0
Vr=1.5;
iE=(Vr-Vbe)/Re;
printf('\nemitter current=%.2f microA\n',iE)
iR=Vy/Rc;
printf('\nmaximum current in Rc =%.2fmicroA\n',iR)
iD=iE-iR;
printf('\ncurrent through the diode=%.2f microA\n',iD)
P=iE*Vcc;
printf('\npower dissipation=%.2f microW\n',P)
Vv=1.7;
iE=(Vv-Vbe)/Re;
printf('\niE =%.2fmicroA\n',iE)
P=iE*Vcc;
printf('\npower dissipation =%.2fmicroW\n',P)
