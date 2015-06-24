clc
clear
//input data
a=170//Jet deflection angle in degree
K=1-0.12//Percentage of effective relative velocity after considering friction
UC1=0.47//Ratio of bucket speed to jet speed
GH=600//Gross head on the wheel in m
P=1250//Actual power developed by the wheel in kW
Hl=48//Head loss in nozzle due to pipe friction in m
D=0.9//Bucket circle diameter of the wheel in m
ATnH=0.9//The ratio between actual and calculated hydraulic efficiency
g=9.81//Acceleration due to gravity in m/s^2
dw=1000//Density of water in kg/m^3
Cv=0.98//Velocity coefficient

//calculations
H=GH-Hl//Net head after loses at entry to nozzle in m
C1=Cv*(2*g*H)^(1/2)//Jet speed in m/s
U=UC1*C1//Wheel bucket speed in m/s
N=(U*60)/(3.1415*D)//Wheel rotational speed in rpm
Wm=U*((C1-U)*(1-(K*cosd(a))))//Work done per unit mass flow rate in W/(kg/s)
Tnh=Wm/(C1^2/2)//Theoretical hydraulic efficiency 
Anh=ATnH*Tnh//Actual hydrualic effficiency
m2=(P*10^3)/(Anh*(1/2)*C1^2)//Mass flow rate for both the nozzles in kg/s
m=m2/2//Mass flow rate of each nozzle in kg/s
d=((4*m)/(dw*C1*3.1415))^(1/2)//Nozzle diameter in m

//output
printf('(a)theoretical hydraulic efficiency is %3.2f \n(b)Wheel rotational speed is %3.f rpm\n(c)diameter of the nozzle is %3.4f m',Tnh,N,d)
