clc
clear
//input data
T00=973//Total head inlet temperature in K
P00=4.5//Total head inlet pressure in bar
P2=1.6//Static head outlet pressure in bar
m=20//Gas flow rate in kg/s
a1=(90-28)//Nozzle outlet angle measured perpendicular to blade velocity in degree
Dmh=10//Mean blade diameter to blade height ratio 
NLC=0.1//Nozzle loss coefficient
Cp=1155.6//Specific heat of gas at a constant pressure in kJ/kg
R=289//Gas constant in J/kg
r=1.333//Ratio of specific heats of gas 

//calculations
T2ss=T00*(P2/P00)^((r-1)/r)//Isentropic temperature at outlet in mid section in K here T00=T01
T1s=T2ss//Isentropic temperature at inlet at mid section in K
C1m=(2*Cp*(T00-T1s)/1.1)^(1/2)//Velocity of steam at exit from nozzle at mid section in m/s
T1=T00-((C1m^2)/(2*Cp))//Gas temperature at mid section in K
d=(P2*10^5)/(R*T1)//Density of gas in kg/m^3
Rg=(Cp*(r-1)/r)//Gas constant of the gas in kJ/kg
Ca=C1m*cosd(a1)//Axial velocity in m/s
h=((m/(d*Ca))*(1/(Dmh*3.1415)))^(1/2)//Hub height in m
Dm=Dmh*h//Mean blade diameter in m
Dh=Dm-h//Hub diameter in m
a1h=atand(((Dm/2)/(Dh/2))*tand(a1))//Discharge angle at hub in degree
C1h=Ca/cosd(a1h)//Gas velocity at hub section in m/s
T1h=T00-((C1h^2)/(2*Cp))//Gas temperature at hub in K here T01=T00
Dt=Dm+h//Tip diameter in m
a1t=atand(((Dm/2)/(Dt/2))*tand(a1))//Gas discharge angle at tip in degree
C1t=Ca/cosd(a1t)//Gas velocity at tip in m/s
T1t=T00-((C1t^2)/(2*Cp))//Gas temperature in K here T00=T01

//output
printf('(a)At mid section\n    Gas velocity is %3.1f m/s\n    Gas temperature is %3.1f K\n    Gas discharge angle is %3i degree\n(b)At hub section\n    Gas velocity is %3.1f m/s\n    Gas temperature is %3.2f K\n    Gas discharge angle is %3.2f degree\n(c)At tip section\n    Gas velocity is %3.1f m/s\n    Gas temperature is %3.2f K\n    Gas discharge angle is %3.2f degree',C1m,T1,a1,C1h,T1h,a1h,C1t,T1t,a1t)
