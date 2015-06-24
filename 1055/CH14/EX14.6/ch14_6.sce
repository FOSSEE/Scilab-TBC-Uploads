//To determine whether relay will operate or not.
clear 
clc;
Ic=360-320;// the difference current (amp)
Io=40*5/400;
Avg=(360+320)/2;// average sum of two currents
Iavg=340*5/400;
Ioc=.1*Iavg + .2;
mprintf("operating current=%.3f amp. \n",Ioc);
mprintf("since current through  operating coil is %.3f amp. \n ",Io);
mprintf("therefore Relay will not operate ");
