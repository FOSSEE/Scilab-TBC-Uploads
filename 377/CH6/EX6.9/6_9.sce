disp("np0=n0p+(g*τe)");
n0p=4.5*10^5;
g=10^15;
a=10^-5;  //say a=τe
np0=n0p+(g*a);
printf('\n The value of np0 is %fcm^-3',np0);
t=-a*log(n0p/np0);
printf('\n The value of t is %fms',t*10^3);