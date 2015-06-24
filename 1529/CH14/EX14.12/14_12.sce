//Chapter 14, Problem 12
clc;
Imax = 120;                     //current in amperes
w = 100*%pi;                    // in rad/sec
phi = 0.36;                     // in rad
t1 = 0;                         // in secs
t2 = 0.008;                     // in secs
i = 60;                         // in amperes

//calculation:
//for a sine wave
f = w/(2*%pi)
T = 1/f
phid = phi*180/%pi
i0 = Imax*sin((w*t1) + phi)
i8 = Imax*sin((w*t2)+phi) 
ti = (asin(i/Imax) - phi)/w
tm1 = (asin(Imax/Imax) - phi)/w

printf("\n (a)Peak value = %.0f A, Periodic time T = %.2f sec, Frequency, f = %.0f Hz Phase angle = %.1f°\n\n", Imax, T, f, phid)
printf("\n (b) When t = 0, i = %.1f A\n\n",i0)
printf("\n (c)When t = 8 ms = %.1f A\n\n", i8)
printf("\n (d)When i is 60 A, then time t = %.2E s\n\n",ti)
printf("\n (e)When the current is a maximum, time, t = %.2E s\n\n",tm1)
