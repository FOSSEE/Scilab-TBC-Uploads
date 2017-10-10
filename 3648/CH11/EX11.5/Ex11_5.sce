//Example 11_5
clc();
clear;
//To findout how long does the heater takes to heat
m=500      //Units in gm
c=0.033       //Units in Cal/gm Centigrade
tf=357     //Units in Centigrade
to=20     //Units in Centigrade
m1=30       //Units in gm
hv=65     //Units in cal/gm
Hg=((m*c*(tf-to))+(m1*hv))*4.1808135       //units in Joules
delivered=70      //Units in Joule/Sec
t=Hg/delivered     //Units in sec
printf("The time taken is t=%d sec",t)
//In textbook answer printed wrong as t=450 sec correct answer is t=448 sec
