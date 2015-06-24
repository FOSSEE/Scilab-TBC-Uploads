//Problem 14.10: An alternating voltage is given by v = 75sin(200*pi*t -0.25) volts. Find (a) the amplitude, (b) the peak-to-peak value, (c) the rms value, (d) the periodic time, (e) the frequency, and (f) the phase angle (in degrees and minutes) relative to 75 sin 200t

//initializing the variables:
Vmax = 75; // in Volts
w = 200*%pi; // in rad/sec
t = 0.004; // in sec
phi = 0.25; // in radians

//calculation:
//for a sine wave
Vptp = 2*Vmax
Vrms = 0.707*Vmax
f = w/(2*%pi)
T = 1/f
v = Vmax*sin(w*t)
phid = phi*180/%pi

printf("\n\n Result \n\n") 
printf("\n (a) Amplitude, or peak value = %.0f V",Vmax)
printf("\n (b) Peak-to-peak value = %.0f V",Vptp)
printf("\n (c)rms value = %.0f V",Vrms)
printf("\n (d)periodic time, T = %.2f sec",T)
printf("\n (e)frequency f = %.0f Hz",f)
printf("\n (f)phase angle = %.2f°",phid)