//Problem 14.09: An alternating voltage is given by v = 282.8 sin 314t volts. Find (a) the rms voltage, (b) the frequency and (c) the instantaneous value of voltage when t = 4 ms

//initializing the variables:
Vmax = 282.8; // in Volts
w = 314; // in rad/sec
t = 0.004; // in sec

//calculation:
//for a sine wave
Vrms = 0.707*Vmax
f = w/(2*%pi)
v = Vmax*sin(w*t)

printf("\n\n Result \n\n") 
printf("\n (a)rms value = %.0f V",Vrms)
printf("\n (b)frequency f = %.0f Hz",f)
printf("\n (c)instantaneous value of voltage at 4 ms = %.1f V",v)