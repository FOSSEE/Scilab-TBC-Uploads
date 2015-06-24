//Finding the Snubber Values for Limiting dv/dt and di/dt Values of a BJT Switch
//Example 4.6(Page No- 154) 
clc
clear
//given data
fs = 10*10^3;//kHz
Vs = 220;//V
Il = 100;//A
Vce_sat = 0;//V
td = 0;
tr = 3*10^-6//sec
tf = 1.2*10^-6//sec

//part(a)
Ls = (Vs*tr)/Il;
printf('(a)\t Ls: %1.1f uH',Ls*10^6)

//part(b)
Cs = (Il*tf)/Vs;
printf('\n (b)\t Cs: %1.2f uF',Cs*10^6)

//part(c)
Rs = 2*sqrt(Ls/Cs);
printf('\n (c)\t Rs for critically damped condition: %1.2f Ohm',Rs)

//part(d)
Rs = 1/(3*fs*Cs);
printf('\n (d)\t Rs, if discharge time is limited to one third of switching period: %2.1f Ohm',Rs)

//part(e)
Rs = Vs/(0.1*Il);
printf('\n (e)\t Rs, if the peak discharge current is limited to 10%% of load current: %d Ohm',Rs)

//part(f)
Ps = 0.5*Cs*Vs^2*fs;
printf('\n (f)\t The snubber loss, negliecting the loss in diode Ds, is %3.2fW',Ps)
