//Example 4_4
clc();
clear;
// To calculate How far does the car goes
w1=3300    //units in lb
F1=4.45   //units in Newtons
w2=1     //units in lb
weight=w1*(F1/w2)  //units in Newtons
g=9.8   //units in meters/sec^2
Mass=weight/g   //units in Kg
speed=38   //units in mi/h
speed=speed*(1.61)*(1/3600)   //units in Km/sec
stoppingforce=0.7*(weight)   //units in Newtons
a=stoppingforce/-(Mass)   //units in meters/sec^2
vf=0
v0=17   //units in meters/sec
x=(vf^2-v0^2)/(2*a)
printf("The car goes by x=%.1f meters",x)
//In text book the answer is printed wrong as x=20.9 meters the correct answer is x=21.1 meters
