clc
clear
//input data
P1=5//Input pressure of steam in bar
P2=3//Exhaust pressure of steam in bar
C0=75//Carry over velocity of steam in m/s
a1=20//Nozzle angle in degree
UC1=0.4//The direction of blade rotation and blade speed ratio
b2=20//Blade exit angle in degree
m=2.5//Steam flow rate in kg/s
W=206//Power Output of the stage in kW
Nn=0.9//Efficiency of the nozzle

printf('Assuming isentropic expansion the enthalpy drop can be found from steam table\n\nThe following values are obtained from steam tables')
 
h1=2747.5//Enthalpy at initial pressure in kJ/kg
s1=6.819//Entropy at initial pressure in kJ/kg.K
s2=s1//Entropy at final pressure in kJ/kg.K
sfp2=1.647//Entropy of fliud at final pressure in kJ/kg.K
sfgp2=5.367//Entropy of fliud-gas mixture at final pressure in kJ/kg.K
hfg=2170.1//Enthalpy of fliud-gas mixture in kJ/kg
hf=551.5//Enthalpy of fliud in kJ/kg

printf('\n\nThe scale of the velocity vector diagram is 1:50\n\nThe following values are obtained from the velocity vector diagram')

W1=280//Relative velocity at inlet in m/s
W2=240//Relative velocity at exit in m/s

//calculations
x2=(s2-sfp2)/sfgp2//The percentage of wet steam 
h2s=hf+(x2*hfg)//The isentropic enthalpy at the second stage in kJ/kg
dhs=h1-h2s//Isentropic heat drop in kJ/kg
C1=((2000*Nn*dhs)+(C0^2))^(1/2)//Velocity of steam at exit from nozzle in m/s
U=UC1*C1//Blade speed in m/s
Wx1Wx2=(W*10^3)/(m*U)//The sum of whirl components of velocity in m/s
Ndia=(U*Wx1Wx2)/((C1^2)/2)//Diagram efficiency 
RV=W2/W1//Relative velocity ratio 
E=dhs+((C0^2)/2000)//Energy supplied per kg in kJ/kg
Ns1=(U*Wx1Wx2)/(E*10^3)//Stage efficiency
Ns2=Ndia*Nn//Stage efficiency in other method

//output
printf('\n\n(a)Velocity of steam at exit from nozzle is %3.2f m/s\n(b)Diagram efficiency is %3.4f\n(c)Relative velocity ratio is %3.3f\n(d)\n    Stage efficiency in method 1 is %3.4f\n    Stage efficiency in method 2 is %3.4f',C1,Ndia,RV,Ns1,Ns2)
