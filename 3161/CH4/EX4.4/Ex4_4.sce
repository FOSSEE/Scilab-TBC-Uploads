clc;
//page 208
//problem 4.4

//Given modulating signal m(t) = 2*sin(2*pi*(10^3)*t), B for phase modulation Bp = 10 & for fequency modulation Bf = 10
Bp = 10
Bf = 10

//So Amplitude of modulating signal is Am=2 metres
Am = 2

//Frequency of modulating signal is fm = 1000 hertz
fm=1000

//Bandwidth = 2*(1+B)*fm

//Bandwidth for phase modulation with modulating signal m(t) is bw_pm = 2*(1+Bp)*fm
bw_pm = 2*(1+10)*1000

//Bandwidth for frequency modulation with modulating signal m(t) is bw_fm = 2*(1+Bf)*fm
bw_fm = 2*(1+10)*1000

disp('Bandwidth for phase modulation '+string(bw_pm)+' Hz')
disp('Bandwidth for frequency modulation '+string(bw_fm)+' Hz')

//Bandwidth for phase & frequency modulation if frequency of modulating signal is doubled i.e fm = 2000 hertz

//Bp & Bf after frequency of modulating signal is doubled

//Bp = kp*Am, observing the equation as there is no change in amplitude Bp = 10
Bp = 10

//Bf = kf*Am/fm, observing the equation as there is change in frequency  Bf = 10/2 = 5
Bf = 5

//Bandwidth for phase modulation if frequency of modulating signal is doubled is bw_double_pm = 2*(1+Bp)*fm
bw_double_pm = 2*(1+10)*2000

//Bandwidth for frequency modulation if frequency of modulating signal is doubled is bw_double_fm = 2*(1+Bf)*fm
bw_double_fm = 2*(1+5)*2000

disp('Bandwidth for phase modulation for doubled frequency '+string(bw_double_pm)+' Hz')
disp('bandwidth for frequency modulation for doubled frequency '+string(bw_double_fm)+' Hz')

//Bandwidth for phase & frequency modulation if amplitude of modulating signal is halfed i.e Am = 1 metre

//Bp & Bf after amplitude of modulating signal is halfed

//Bp = kp*Am, observing the equation as there is change in amplitude Bp = 10/2 = 5
Bp = 5

//Bf = kf*Am/fm, observing the equation as there is change in amplitude Bf = 5/2 = 2.5
Bf = 2.5

//Bandwidth for phase modulation if frequency of modulating signal is doubled is bw_halfed_pm = 2*(1+Bp)*fm
bw_halfed_pm = 2*(1+5)*2000

//Bandwidth for frequency modulation if frequency of modulating signal is doubled is bw_halfed_fm = 2*(1+Bf)*fm
bw_halfed_fm = 2*(1+2.5)*2000

disp('Bandwidth for phase modulation for halfed amplitude '+string(bw_halfed_pm)+' Hz')
disp('Bandwidth for frequency modulation for halfed amplitude '+string(bw_halfed_fm)+' Hz')
