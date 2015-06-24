
clc
clear
//Input data
n=4//Number of units
P=70000//Power in kVA
f=50//Frequency in Hz
p=10//No.of pair of poles
h=505//Gross head in m
tn=94//Transmission efficiency in percent
po=260//Power in MW
e=91//Efficiency in percent
nn=0.98//Nozzle efficiency
Cv=0.98//Coefficient of velocity
x=0.48//Vb=0.48 V
dd=25//Nozzle diameter is 25% bigger than jet diameter
a=165//Angle of buckets in degrees
de=99.75//Discharge efficiency in percent

//Calculations
N=(120*f)/(p*2)//Synchronous speed in r.p.m
nh=((tn/100)*h)//Net head in m
pt=(po*10^3)/n//Power developed per turbine in kW
ip=(pt/(e/100))//Input water power in kW
Q=(ip/(9.81*nh))//Discharge in m^3/s
Qj=(Q/n)//Discharge per jet in m^3/s
V1=Cv*sqrt(2*9.81*nh)//Velocity in m/s
d=sqrt((4/3.14)*(Qj/V1))//Diameter of jet in m
nd=(1+(dd/100))*d//Nozzle tip diameter in m
Vb=(x*V1)//Velocity in m/s
D=((Vb*60)/(3.14*N))//Pitch circle diameter of the wheel in m
Ns=((N*sqrt(po*10^3))/nh^(5/4))//Specific speed
jr=(D/d)//Jet ratio
nob=(jr/2)+15//Number of buckets
nobb=ceil(nob)//Rounding off to next integer
W=((V1-Vb)*(1-(nn*cosd(a)))*Vb)/9.81//Workdone per kg in kg.m/kg
nth=((W/nh)*de)//Hydraulic efficiency in percent

//Output
printf('(a) the discharge of the turbine is %3.2f m^3/s \n (b) the jet diameter is %3.3f m \n (c) the nozzle tip diameter is %3.3f m \n (d) the pitch circle diameter of the wheel is %3.2f m \n (e) the specific speed is %3.2f \n (f) the number of buckets on the wheel are %3.0f \n (g) the workdone per kg of water on the wheel is %3.2f kg.m/kg \n (h) the hydraulic efficiency is %3.0f percent',Q,d,nd,D,Ns,nobb,W,nth)
