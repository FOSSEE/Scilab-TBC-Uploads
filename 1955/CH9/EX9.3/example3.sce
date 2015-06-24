clc
clear
//input data
D=0.8//Mean diameter of the bucket in m
N=1000//Running speed of the wheel in rpm
H=400//Net head on the pelton wheel in m
Q=0.150//Discharge through the nozzle in m^3/s
g=9.81//Acceleration due to gravity in m/s^2
UC1=0.46//Ratio of bucket speed to jet speed
dw=1000//Density of water in kg/m^3
a=15//Side clearance angle in degree

//calculations
m=dw*Q//Mass flow rate through the nozzle in kg/s
U=(3.1415*D*N)/60//Wheel speed in m/s
C1=U/UC1//Jet speed in m/s
P=(1/2)*m*C1^2*(10^-3)//Power available at the nozzle in kW
W1=C1-U//Relative inlet fluid velocity in m/s
W2=W1//Relative exit fluid velocity in m/s assuming no loss of relative velocity
Wx2=W2*cosd(a)//Exit whirl velocity component in m/s
Cx2=Wx2-U//Absolute exit whirl velocity in m/s
Cx1=C1//Absolute inlet whirl velocity in m/s
Wm=U*(Cx1+Cx2)//Work done per unit mass flow rate in W/(kg/s)
nH=(Wm/g)/((C1^2/2)/g)//Hydrualic effciency 

//output
printf('(a)Power available at the nozzle is %3.3f kW\n(b)Hydraulic efficiency is %3.3f',P,nH)
