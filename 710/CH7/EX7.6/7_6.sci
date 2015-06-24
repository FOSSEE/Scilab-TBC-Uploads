clc();
clear;
//To determine the displacement produced ,the angle made by the beam with the axis,velocity of electrons
V=25;                                        //deflecting voltage
l=0.03;                                      //length of deflecting planes in m
d=0.75;                                     //distance between 2 deflecting plates
Va=800;                                     //final anode voltage
D=0.2;                                     //distance between the screen and the plates
y=(((V*l)/(2*d*Va))*(D+(l/2)))*10^4        //displacement produced
a=((V*l)/(2*d*Va))*10^2;
alpha=atand(a)                              //angle made by the beam with the axis
e=1.6*10^-19;
m=9.1*10^-31;                                //mass of electron
v=((sqrt((2*e*Va)/m))/cosd(alpha))          //velocity of electron
printf("the displacement produced is %f cm,the angle made by the beam with the axis is %f,velocity of electrons is %e m/s",y,alpha,v);