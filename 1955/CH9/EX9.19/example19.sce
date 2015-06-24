clc
clear
//input data
D=8//Outer diameter of the turbine in m
Db=3//Inner diameter of the turbine in m
P=30000//Power developed by the turbine in kW
nH=0.95//Hydraulic efficiency
N=80//Speed of the turbine in rpm
H=12//Head operated by the turbine in m
Q=300//Discharge through the runner in m^3/s
g=9.81//Acceleration due to gravity in m/s^2
dw=1000//Density of water in kg/m^3

//calculations
U1=(3.1415*D*N)/60//Runner tip speed at inlet in m/s
U2=U1//Runner tip speed at outlet in m/s     as flow is axial
Cr1=Q/((3.1415/4)*(D^2-Db^2))//Flow velocity at inlet in m/s
Cr2=Cr1//Flow velocity at outlet in m/s      as flow is axial
b22=atand(Cr2/U2)//The angle of the runner blade at outlet in degree
Cx1=(nH*g*H)/U1//Velocity of whirl at inlet in m/s
b11=180-(atand(Cr1/(U1-Cx1)))//The angle of the runner blade at inlet in degree
nM=(P*10^3)/(dw*g*Q*(Cx1*U1/g))//Mechanical efficiency
n0=nM*nH//Overall efficiency

//output
printf('(a)Blade angle at\n    inlet is %3.2f degree\n    outlet is %3.2f degree\n(b)Mechanical efficiency is %3.3f\n(c)Overall efficiency is %3.3f',b11,b22,nM,n0)
