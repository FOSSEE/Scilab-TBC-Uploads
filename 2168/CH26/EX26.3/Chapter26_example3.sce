clc
clear
//Input data
a=11500//Altitude in m
n=123//Number of passengers
c=3//Cargo in tonnes
Va=650//Velocity of air craft in km/hour
d=640//Drag in kg
pe=50//Propulsion efficiency in percent
oe=18//Overall efficiency in percent
CV=10000//Calorific value in kcal/kg
da=0.0172//Density of air at 11500 m in kg/cm^2

//Calculations
Vp=((Va*1000)/3600)//Velocity of aeroplane in m/s
Vr=((2/(pe/100))-1)*Vp//Velocity of working medium in m/s
nhp=((d*Vp)/(75*(pe/100)))//Net horse power in H.P
wf=((nhp*75*3600)/((oe/100)*427*CV))//Mass flow rate in kg/hr
thp=((Va*Vp)/75)//Thrust horse power in H.P
F=(wf/thp)//Fuel consumption per thrust H.P hour in kg
W=((Va*9.81)/Vr)//Air flow in kg/sec
va=(W/da)//Volume of air in cu.m/sec
aa=(va/(3*Vr))//Area of jet in m^2
d=sqrt((4*aa)/3.14)*100//Diameter of jet in cm
af=((W*3600)/wf)//Air fuel ratio

//Output
printf('(a) Absolute velocity of the jet is %3.1f m/sec \n (b) Net horse power of the gas plant is %3.0f H.P \n (c) Fuel consumption per thrust H.P hour is %3.3f kg \n (d) Diameter of the jet is %3.1f cm \n (e) Air-fuel ratio of the engine is %3.1f',Vr,nhp,F,d,af)

