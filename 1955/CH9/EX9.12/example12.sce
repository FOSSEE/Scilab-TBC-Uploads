clc
clear
//input data
P=330//Power output from the turbine is kW
H=70//Head of operating turbine in m
N=750//Speed of the turbine in rpm
nH=0.94//Hydraulic efficiency
n0=0.85//Overall efficiency
FR=0.15//Flow ratio 
BR=0.1//Breadth ratio
D1D2=2//Ratio inner and outer diameter of runner
g=9.81//Acceleration due to gravity in m/s^2
dw=1000//Density of water in kg/m^3

//calculations
Cr1=FR*(2*g*H)^(1/2)//Flow velocity at inlet in m/s
Q=(P*10^3)/(dw*g*H*n0)//Discharge at outlet in m^3/s
D1=(Q/(nH*3.1415*BR*Cr1))^(1/2)//Runner inlet diameter in m
b1=BR*D1//Height of the runner vanes at inlet in m
U1=(3.1415*D1*N)/60//Runner tip speed at inlet in m/s
Cx1=(nH*g*H)/(U1)//Velocity of whirl at inlet in m/s
a11=atand(Cr1/Cx1)//Guide blade angle in degree
b11=atand(Cr1/(Cx1-U1))//Runner vane angle at inlet in degree
D2=D1/D1D2//Runner outlet diameter in m
U2=(3.1415*D2*N)/60//Runner tip speed at outlet in m/s
Cr2=Cr1//Flow velocity at outlet in m/s
b22=atand(Cr2/U2)//Runner vane angle at outlet in degree
b2=D1*b1/D2//Width at outlet in m

//output
printf('(a)Flow velocity at inlet is %3.2f m/s\n(b)Discharge at outlet is %3.3f m^3/s\n(c)Runner inlet diameter is %3.3f m\n(d)Height of the runner vanes at inlet is %3.4f m\n(e)Guide blade angle is %3.2f degree\n(f)    Runner vane angle at inlet is %3.2f degree\n       Runner vane angle at outlet is %3.2f degree\n(g)Runner outlet diameter is %3.4f m\n(h)Width at outlet is %3.4f m\n(i)Runner tip speed at inlet is %3.2f m/s\n(j)Velocity of whirl at inlet is %3.f m/s',Cr1,Q,D1,b1,a11,b11,b22,D2,b2,U1,Cx1)
