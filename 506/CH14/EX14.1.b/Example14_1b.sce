clear;
clc;

//Frequency Response Peak
//Given Data

//Poles in radians per sec
s1 = -46.2*(10^5);
s2 = -45.9*(10^6);
s3 = -11.4*(10^8);
s4 = -30.4*(10^8);

//Zeros
s5 = 16.65*(10^9);
s6 = 15.4*(10^8);
s7 = -22.55*(10^8);
s = 6.28*(10^6);
B = 0.040;
Ai = 410;//Gain

n = s2/s1;
Q = (n*(1+(B*Ai)))^0.5/(n+1);
k = 1/(2*Q);

s1f = s1*((n+1)/2)*(1-%i*((4*Q*Q)-1)^0.5);
s2f = s1*((n+1)/2)*(1+%i*((4*Q*Q)-1)^0.5);

//Frequency Response Peak
wo = -Q*(s1+s2);
disp(wo,'wo=');
w = wo*(1-(2*k*k))^0.5//frequency at which frequency response peak occours
disp(w,'w=');
fpeak = (wo/s)*(1-(2*k*k))^0.5;
disp('MHz',fpeak,'fpeak=');
//At peak
a = 1/(2*k*(1-(k*k))^0.5);
overshoot = 20*log10(a);
disp('dB',overshoot,'Overshoot is');


//end