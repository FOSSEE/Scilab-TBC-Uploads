clc
clear
//input data
D=1.4//Diameter of the turbine in m
N=430//Speed of the turbine in rpm
Cr1=9.5//Flow velocity without shock at runner in m/s
C2=7//Absolute velocity at the exit without whirl in /s
dSPH=62//Difference between the sum of static and potential heads at entrance to runner and at exit from runner in m
W=12250//Power given to runner in kW
Q=12//Flow rate of water from the turbine in m^3/s
H=115//Net head from the turbine in m
g=9.81//Acceleration due to gravity in m/s^2
dw=1000//Density of water in kg/m^3

//calculations
U1=(3.1415*D*N)/60//Runner tip speed in m/s
Cx1=(W*10^3)/(dw*Q*U1)//Absolute inlet velocity in m/s    as flow is radial at outlet Cx2=0  in m/s as Cx2=0 as zero whirl at outlet
a1=atand(Cr1/Cx1)//Guide vane angle in degree
C1=(Cr1^2+Cx1^2)^(1/2)//Inlet velocity in  m/s
b1=atand(Cr1/(Cx1-U1))//Runner blade entry angle in degree
dHr=dSPH+(((C1^2)-(C2^2))/(2*g))-(U1*Cx1/g)//Loss of head in the runner in m

//output
printf('(a)\n    (1)Guide vane angle at inlet is %3.1f degree\n    (2)Inlet absolute velocity of water at entry to runner is %3.1f m/s\n(b)Runner blade entry angle is %3.1f degree\n(c)Total Loss of head in the runner is %3.2f m',a1,C1,b1,dHr)
