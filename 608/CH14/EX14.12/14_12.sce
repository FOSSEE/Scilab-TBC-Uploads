//Problem 14.12: The current in an a.c. circuit at any time t seconds is given by: i = 120 sin(100*pit+0.36) amperes. Find: (a) the peak value, the periodic time, the frequency and phase angle relative to 120sin 100pit (b) the value of the current when t = 0 (c) the value of the current when t = 8 ms (d) the time when the current first reaches 60 A, and (e) the time when the current is first a maximum

//initializing the variables:
Imax = 120; // in Amperes
w = 100*%pi; // in rad/sec
phi = 0.36; // in rad
t1 = 0; // in secs
t2 = 0.008; // in secs
i = 60; // in amperes

//calculation:
//for a sine wave
f = w/(2*%pi)
T = 1/f
phid = phi*180/%pi
i0 = Imax*sin((w*t1) + phi)
i8 = Imax*sin((w*t2)+phi) 
ti = (asin(i/Imax) - phi)/w
tm1 = (asin(Imax/Imax) - phi)/w

printf("\n\n Result \n\n") 
printf("\n (a)Peak value = %.0f A, Periodic time T = %.2f sec, Frequency, f = %.0f Hz Phase angle = %.1f°", Imax, T, f, phid)
printf("\n (b) When t = 0, i = %.1f A",i0)
printf("\n (c)When t = 8 ms = %.1f A", i8)
printf("\n (d)When i is 60 A, then time t = %.2E s",ti)
printf("\n (e)When the current is a maximum, time, t = %.2E s",tm1)