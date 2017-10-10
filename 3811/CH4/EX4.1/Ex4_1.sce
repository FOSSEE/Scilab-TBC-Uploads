//Book name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi
//chapter 4
//example 4.1
//edition 1
//publisher and place:Nelson Engineering
clc;
clear;
m=5000;                                   //mass of the electric bus in kg
d=1;                                     //diameter of the wheel in m
r=d/2;                                  //radius of the wheel in m
v=50;                                  //speed of the bus going to uphill in kg/hr
a=30;                                 //slope of the hill in degree
u=0.4;                               //friction coefficient
g=9.8;                              //gravitational acceleration
Fg=m*g;                            //gravitational force in newton(N)
F=Fg*cosd(a);                    //normal force in newton(N)
Fl=Fg*sind(a);                  //load pulling force in newton (N)
Fr=u*F;                         //friction force in newton(N)
Fm=Fl+Fr;                      //total force seen by motor in newton(N)
Tm=Fm*r;                      //Torque seen by the motor in Nm
omega=v/r;                       //angular speed 
Pm=Tm*omega;                    //power consumed by the motor in watt
Pm=Pm*10^-3;              //power consumed by the motor in kilowatt 
disp(Pm,'The power consumed by the motor in kilowatt is:')
