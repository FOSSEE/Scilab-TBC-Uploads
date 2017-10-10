//ques-18.40
//Calculating final pressure and temperature on expansion of a dry gas
clc
T1=273;//temperature (in K)
r=3;//ratio = V2/V1
P1=760;//pressure (in mm Hg)
q=1.4;
T2=T1/(r^(q-1));
P2=P1/(r^q);
printf("Final pressure is %.1f atm and final temperature is %.0f K.",P2,T2);
