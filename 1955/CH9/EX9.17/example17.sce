clc
clear
//input data
H=20//Head developed over the turbine in m
P=11800//Power developed by turbine in kW
D=3.5//Outer diameter of the runner in m
Db=1.75//Hub diameter in m
a11=35//Guide blade angle in degree 
nH=0.88//Hydraulic efficiency 
n0=0.84//Overall efficiency
Cx2=0//Velocity of whirl at outlet in m/s
g=9.81//Acceleration due to gravity in m/s^2
dw=1000//Density of water in kg/m^3

//calculations
Q=(P*10^3)/(n0*g*H*dw)//Discharge of turbine in m^3/s
Cr1=Q/((3.1415/4)*(D^2-Db^2))//Flow velocity at inlet in m/s
Cx1=Cr1/tand(a11)//Velocity of whirl at inlet in m/s
U1=(nH*H*g)/(Cx1)//Runner tip speed at inlet in m/s
Wx1=U1-Cx1//Inlet whirl velocity component in m/s
b11=180-(atand(Cr1/-Wx1))//Runner inlet angle in degree
Cr2=Cr1//Flow velocity at outlet in m/s      for a kaplan turbine
U2=U1//Runner tip speed at outlet in m/s     for a kaplan turbine
b22=atand(Cr2/U2)//Runner outlet angle in degree 
N=(U1*60)/(3.1415*D)//The speed of the turbine in rpm

//output
printf('(1)\n    (a)The runner inlet angle is %3.2f degree\n    (b)The runner outlet angle is %3.1f degree\n(2)The speed of the turbine is %3.2f rpm',b11,b22,N)
