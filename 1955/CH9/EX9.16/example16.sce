clc
clear
//input data
P=9100//Power developed by the turbine in kW
H=5.6//Net head available at the turbine in m
SR=2.09//Speed ratio
FR=0.68//Flow ratio
n0=0.86//Overall effiiciency of the turbine
g=9.81//Acceleration due to gravity in m/s^2
dw=1000//Density of water in kg/m^3
DbD=1/3//Ratio of diameter of the boss to diameter of the runner

//calculations
U1=SR*(2*g*H)^(1/2)//Runner tip speed at inlet in m/s
Cr1=FR*(2*g*H)^(1/2)//Flow velocity at inlet in m/s
Q=(P*10^3)/(n0*dw*g*H)//Discharge through the turbine in m^3/s
D=(Q*4/(3.1415*Cr1*((1^2)-(DbD^2))))^(1/2)//Diameter of the runner in m
N=(U1*60)/(3.1415*D)//Speed of the the turbine in rpm
Ns=(N*(P)^(1/2))/(H)^(5/4)//Specific speed 
disp(Q)
//output
printf('(a)Diameter of the runner of the turbine is %3.2f m\n(b)Speed of the turbine is %3.1f rpm\n(c)The specific speed is %3.2f',D,N,Ns)
