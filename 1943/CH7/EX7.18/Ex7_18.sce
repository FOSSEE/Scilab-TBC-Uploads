
clc
clear
//Input data
N=3000//Speed in rpm
Vb=100//Mean blade speed in m/s
x=0.56//Velocity ratio
a=20//Blade angle in degrees
b2=a//Blade angle in degrees
v=0.65//Specific volume in m^3/kg
h=25//Mean height in mm
n=5//Number of pairs of blades

//Calculations
V1=(Vb/x)//Velocity in m/s
Vr2=V1//Velocity in m/s
Dm=(Vb*60)/(3.14*N)//Diameter in m
w=((3.14*Dm*h*V1*sind(a))/v)/1000//Mass flow rate in kg/s
ws=(w*3600)//Mass flow rate in kg/hr
b1=atand((V1*sind(a))/((V1*cosd(a))-Vb))//Blade angle in degrees
Vr1=((V1*sind(a))/sind(b1))//Velocity in m/s
dhmb=(1/2)*(Vr2^2-Vr1^2)/1000//Change in enthalpy in kJ/kg
dsta=(2*dhmb)//Change in enthalpy of stage in kJ/kg
dsta5=(n*dsta)//Total Change in enthalpy of stage in kJ/kg
Dp=(w*dsta5)//Diagram power in kW

//Output
printf('Mass flow rate of steam is %3.3f kg/s \n Useful enthalpy drop is %3.2f kJ/kg \n The diagram power is %3.1f kW',w,dsta5,Dp)
