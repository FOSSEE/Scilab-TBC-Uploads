clc
clear
//input data
U=300//Blade speed in m/s
a=20//Nozzle angle in degree
dhs=473//Isentropic heat drop in kJ/kg
Nn=0.85//Nozzle efficiency
W2W1=0.7//Blade velocity coefficient
nM=0.9//Mechanical efficiency

//initial calculations
dh=Nn*dhs//Useful heat drop converted into kinetic energy in kJ/kg
C1=(2*1000*dh)^(1/2)//Velocity of steam at exit from nozzle in m/s

printf('The scale of the velocity vector diagram is 1:100\n\nThe following values are obtained from the velocity vector diagram')

Ca1=310//Inlet axial velocity in m/s
Ca2=210//Exit axial velocity in m/s
Wx1=550//Inlet whirl velocity in m/s
Wx2=380//Exit whirl velocity in m/s
W1=620//inlet Blade velocity in m/s

//calculations
W2=W2W1*W1//Exit bladde velocity in m/s
AT=Ca1-Ca2//Axial thrust in N/kg
Wm=U*(Wx1+Wx2)*10^-3//Work developed per kg of steam/sec in kW/(kg/s)
P=Wm*nM//Power developed per kg of steam/sec in kW/(kg/s)
m=3600/P//Steam rate per kW.hr in kg
Ndia=((U*(Wx1+Wx2))/((C1^2)/2))//Diagram or blade efficiency 
MNdia=(sind(90-a))^(2)//Maximum blade efficiency under optimum conditions 
Ns1=Wm/dhs//Stage efficiency
Ns2=Ndia*Nn//Stage efficiency in other method
E=(((W1^2)-(W2^2))/2)*10^-3//Energy loss in blade friction in kJ/kg

//output
printf('\n\n(a)Axial thrust is %3i N/kg\n(b)\n    Work developed per kg of steam/sec is %3i kW/(kg/s)\n    Power developed per kg of steam/sec is %3.1f kW/(kg/s)\n    Steam rate per kW.hr is %3.1f kg\n(c)\n    Diagram or blade efficiency is %3.3f\n    Maximum blade efficiency under optimum conditions is %3.3f\n    Stage efficiency is %3.4f\n(d)Energy loss in blade friction is %3.3f kJ/kg',AT,Wm,P,m,Ndia,MNdia,Ns1,E)
