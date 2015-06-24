//Example 5_3_u2
clc();
clear;
//To calculate the transition temprature and critical field
hc1=1.4*10^5      //units in amp/met
hc2=4.2*10^5       //units in amp/met
t1=14        //units in K
t2=13         //units in K
tc=sqrt((hc1*t2^2-hc2*t1^2)/(hc1-hc2))     //units in K
printf("Transition temprature is Tc=%.2f K",tc)
hc1_ho=1-(t1/tc)^2
ho=hc1/hc1_ho       //units in amps/met
printf("Critical field Ho=%.1f amps/met",ho)
