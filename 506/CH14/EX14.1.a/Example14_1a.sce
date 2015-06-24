clear;
clc;

//Caption:Lowest poles of an Amplifier 
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
disp(n,'n=');
Q = (n*(1+(B*Ai)))^0.5/(n+1);
disp(Q,'Q=');
k = 1/(2*Q);
disp(k,'k=');

s1f = s1*((n+1)/2)*(1-%i*((4*Q*Q)-1)^0.5);
disp(s1f,'The first pole is');
s2f = s1*((n+1)/2)*(1+%i*((4*Q*Q)-1)^0.5);
disp(s2f,'The second pole is');


//end