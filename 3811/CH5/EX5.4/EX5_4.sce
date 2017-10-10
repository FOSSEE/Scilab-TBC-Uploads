//Book name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi 
//chapter 5
//example 5.4
//edition 1
//publisher and place:Nelson Engineering
clc;
clear;
R1=3;                               //stator resistance in ohm
R2=2;                              //rotor resistance referred to stator in ohm
Xeq=10;                           //equivalent inductive reactance in ohm
l=10;                            //voltage reduction in percentage
V=1;                            //assumed value of V
TA=(1*V)^2;                    //starting torque at the rated voltage
TB=(0.9*V)^2;                 //starting torque after 10% voltage reduction
r=1-TB;                      //reduction in starting torque
r=r*100;                    //reduction in starting torque in percentage
mprintf("\nThe reduction in starting torque is %f percentage",r)
Radd=sqrt(R1^(2)+Xeq^(2))-R2;
mprintf("\nThe resistance added to the rotor circuit to achieve the maximum torque is %f",Radd)
//The answer given in the book is wrong
