clc
disp("Problem 13.8")
printf("\n")

s=%s;
printf("Given")
H=(10*s)/(s^2+30*s+10^6)
disp(H,"H(s)=")
//From the above transfer function
//Comparing the denominator with s^2+a*s+b with w=sqrt(b)
a=30;b=10^6;
//Therefore center frequency is
w0=sqrt(10^6)
//The lower and upper frequencies are
wl=sqrt(a^2/4+b)-a/2
wh=sqrt(a^2/4+b)+a/2
B=wh-wl
Q=sqrt(b)/a
printf("\nCenter frequency= %drad/s\n",w0);
printf("Low power frequency = %3.2frad/s\nHigh power frequency = %3.2frad/s\n",wl,wh);
printf("Bandwidth= %drad/s\nQuality factor =%3.2f\n",B,Q)
