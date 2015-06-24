//To provide time current grading .
clear 
clc;
Isec1=4000/40;// secondary current(amps)
PSM=100/5;// PSM if 100% setting is used
Isec2=4000/40;
PSM2=100/6.25;//PSM if setting used is 125%
TMSb=.72/2.5;
PSM1=5000/(6.25*40);
to=2.2;
tb=to*TMSb;
PSMa=5000/(6.25*80);
TMS=1.138/3;
PSMa1=6000/(6.25*80);
ta=(2.6*.379);
mprintf("Actual operating time of realy at b=%.3f sec. \n",tb);
mprintf("Actual operating time of realy at a=%.3f sec. \n",ta);
