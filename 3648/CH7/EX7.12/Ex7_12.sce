//Example 7_12
clc();
clear;
//To findout the orbital radius and its speed
G=6.67*10^-11   //units in Newtons
me=5.98*10^24   //units in Kg
t=86400  //units in sec
r=((G*me*t^2)/(4*%pi^2))^(1/3)
printf("The orbital radius is r= %d meters\n",r)
v=(2*%pi*r)/t    //units in meters/sec
printf("The orbital speed is v=%d meters/sec",v)
//in textbook the answer is printed wrong as v=3070 m/sec but the correct answer is v=3072 m/sec
