//To calculate the critical current
T = 4.2;     //temperature, K
d = 1;     //diameter, mm
d = d*10^-3;     //diameter, m
Tc = 7.18;    //critical temperature, K
H0 = 6.5*10^4;     //critical field, A/m
Hc = H0*(1-(T/Tc)^2);    //critical field at 2K, A/m
ic = %pi*d*Hc;     //critical current, A
printf("critical current for lead is %5.2f A",ic);

//answer given in the book is wrong
