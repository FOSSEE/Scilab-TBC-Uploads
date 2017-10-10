//Chapter 6:Induction Motor Drives
//Example 16
clc;

//Variable Initialization

//Ratings of the Delta connected slipring Induction motor
f=50           // frequency in HZ
Vl=400         //line voltage in V
P=6            // number of poles
SR=2.2         //ratio of stator to rotor

//Parameters referred to the stator
Xr_=1          // rotor winding reactance in ohm 
Rr_=0.2        // resistance of the rotor windings in ohm
s=0.04         // given slip when motor runs at full load

//Solution
Ns=120*f/P     //synchronous speed
Wms=2*%pi*Ns/60
x=(Rr_/s)**2+Xr_**2
Tf=(3/Wms)*(Vl)**2*(Rr_/s)/x      //full load  torque
K=Tf/(Ns*(1-s))**2
N=850                  //speed of the motor in rpm
Tl=K*N**2              //torque at the given speed N
s=(Ns-N)/Ns            //slip at the given speed N
y=Tl*(Wms/3)/Vl**2     //y=X/(X**2+Xr_**2) and X=(Re+Rr_)/s

mprintf("\nThe torque at the given speed of 850rpm is:%d N-m",Tl)
mprintf("\nWith a slip of s:%.2f",s)
mprintf("\nTo find the external resistance connected the given quadratic equation is X**2-6.633X+1=0")
mprintf("\nWith X=(Re-Rr_)/s where Re is the required external resistance") 

a = 1
b = -1/y
c = 1

//Discriminant
d = (b**2) - (4*a*c)

X1 = (-b-sqrt(d))/(2*a)
X2 = (-b+sqrt(d))/(2*a)

//Results
mprintf("\nThe solutions for X are %.4f and %.4f",X1,X2)
Re1=X1*s-Rr_
Re2=X2*s-Rr_

if (Re1>0) then :
mprintf("\nThe number Re1:%.3f ohm is feasible",abs(Re1))
R=Re1/SR**2
mprintf("\nRotor referred value of the external resistance is:%.3f ohm",R)
end

if (Re2>0) then
mprintf("\nThen  Re2:%.3f ohm is feasible",abs(Re2)) 
R=Re2/SR**2
mprintf("\nHence Rotor referred value of the external resistance is:%.3f ohm",R) 
end
