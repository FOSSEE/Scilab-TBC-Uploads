
clc
clear
//Input data
p=40//Pressure in bar
T=500//Temperature in degree C
p1=0.1//Pressure in bar
a=16//Nozzle angle in degrees
N=3000//Speed in rpm

//Calculations
h1=3445.3//Enthalpy in kJ/kg
s1=7.0901//Entropy in kJ/kg.K
s2=s1//Entropy in kJ/kg.K
x2s=(s2-0.6493)/7.5009//Dryness fraction
h2s=(191.83+x2s*2392.8)//Enthalpy in kJ/kg
V1=44.72*sqrt(h1-h2s)//Velocity in m/s
Vb=V1*(cosd(a)/2)//Velocity in m/s
Dm=(Vb*60)/(3.14*N)//Diameter in m
V2=44.72*sqrt((h1-h2s)/2)//Velocity in m/s
Vb2=V2*cosd(a)//Velocity in m/s
Dm2=(Vb2*60)/(3.14*N)//Diameter in m
V3=44.72*sqrt((h1-h2s)/4)//Velocity in m/s
Vb3=V3*(cosd(a)/2)//Velocity in m/s
Dm3=(Vb3*60)/(3.14*N)//Diameter in m
V4=44.72*sqrt(h1-h2s)//Velocity in m/s
Vb4=V4*(cosd(a)/4)//Velocity in m/s
Dm4=(Vb4*60)/(3.14*N)//Diameter in m
V5=44.72*sqrt((h1-h2s)/(2*4))//Velocity in m/s
Vb5=V5*cosd(a)//Velocity in m/s
Dm5=(Vb5*60)/(3.14*N)//Diameter in m

//Output
printf('The mean diameter of the wheel if the turbine were of \n (a) single impulse stage is %3.2f m \n (b) single 50 percent reaction stage is %3.1f m \n (c) four pressure (or Rateau) stages is %3.2f m \n (d) one two-row Curtis stage is %3.3f m \n (e) four stage 50 percent reaction stages is %3.2f m',Dm,Dm2,Dm3,Dm4,Dm5)
