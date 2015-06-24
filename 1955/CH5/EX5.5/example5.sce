clc
clear
//input data
C1=100//Velocity of steam at exit from nozzle in m/s
h=0.04//Mean blade height in m
b2=20//Exit angle of moving blade in degree
CaU=3/4//Ratio of flow velocity and blade speed at mean radius
m=10000/3600//steam flow rate in kg/s

//calculations
a1=b2//Nozzle angle in degree
Ca=C1*cosd(90-a1)//Flow velocity in m/s
U=Ca/CaU//Mean blade velocity in m/s
v=0.60553//Specific volume of steam from steam table at 3 bar with dry saturated steam in m^3/kg
A=(m*v)/Ca//Annulus area in m^2
D=A/(3.1415*h)//Mean blade diameter in m
N=(U*60)/(3.14*D)//Rotor speed in rpm

printf('\n\nThe scale of the velocity vector diagram is 1:10\n\nThe following values are obtained from the velocity vector diagram')

W1=59//Relative velocity at inlet for first stage in m/s
Wx1Wx2=142//Sum of whirl components of velocity in m/s
DP=m*U*Wx1Wx2*10^-3//Diagram power in kW
Wm=U*(Wx1Wx2)//Work done per kg of steam in kJ/kg
W2=C1//Relative velocity at exit for first stage in m/s
E=((C1^2)/2)+(((W2^2)-(W1^2))/2)//Energy input per kg in kJ/kg when W2=C1
Ndia=Wm/E//Diagram efficiency 
RV=(W2-W1)/W1//Percentage increase in relative velocity 
dH=((W2^2)-(W1^2))/2*10^-3//Enthalpy drop in the moving blades in kJ/kg
H=2*dH//Total enthalpy drop in two stages in kJ/kg

//output
printf('\n\n(a)The rotor speed is %3i rpm\n(b)The diagram power is %3.2f kW\n(c)The diagram efficiency is %3.3f\n(d)Percentage increase in relative velocity is %3.3f\n(e)\n    Enthalpy drop in the moving blades is %3.3f kJ/kg\n    Total enthalpy drop in two stages is %3.3f kJ/kg',N,DP,Ndia,RV,dH,H)
