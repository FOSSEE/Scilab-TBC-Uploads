//Chapter 4: Selection of Motor Power Rating
//Example 2
clc;

//Variable Initialization
N=200         //Speed in rpm
Tc=25000      //Constant Torque in N-m
J=10000       //Moment of inertia  in Kg-m2

//Given Duty Cycles
t1=10         //For full speed and at constant torque
t2=1          //For no load at full speed
t3=5          //For speed reversal from N to -N
t4=1          //For no load  at full speed
T5=20000      //Torque in N-m
t5=15         //At full speed and at a torque T1
t6=1          //For no operation at full speed
t7=5          //For speed reversal from -N to N
t8=1          //For no load operation


//Solution

Tr=J*(N-(-N))*2*%pi/60/5   //Reversal torque
x=Tc**2*t1+Tr**2*t3+T5**2*t5+Tr**2*t7
t=t1+t2+t3+t4+t5+t6+t7+t8      //Total Time
Trms=sqrt(x/t)            //rms torque

Trated=Trms              //Rated torque is equal to the rms torque
Pr=Trated*2*%pi*200/60    //Power rating
r=Tr/Trms            //Ratio of reversal torque to the rms torque
Pr=Pr*1e-3

mprintf("Torque of motor is :%d N-m",Trms)

if r < 2 then
disp("Trms is rated equal to the Motor")
mprintf(" Trms=%d N-m\n",Trms)
end

mprintf(" Power rating :%.3f kW",Pr) 
//The answer provided in the textbook is wrong
