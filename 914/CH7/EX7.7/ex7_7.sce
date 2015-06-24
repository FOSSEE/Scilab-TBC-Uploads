clc;
warning("off");
printf("\n\n example7.7 - pg293");
// given
Uo=1;  //[m/sec]
// using Ux/Uo=y/yo
// assuming any particular value of yo will not change the answer,therefore
yo=1;
Uxavg=integrate('(Uo*y)/yo','y',0,yo);
Ux3avg=integrate('((Uo*y)/yo)^3','y',0,yo);
// using the formula alpha=(Uxavg)^3/Ux3avg
alpha=(Uxavg)^3/Ux3avg;
disp(alpha,"alpha=");
printf("\n\n Note that the kinetic correction factor  alpha has the same final value for laminar pipe flow as it has for laminar flow between parallel plates.");

