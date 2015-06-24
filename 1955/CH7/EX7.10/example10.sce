clc
clear
//input data
DmDp=1/10//The model ratio to prototype
Hm=5//The head developed by the model in m
Hp=8.5//The head developed by the prototype in m
Pp=8000*10^3//The power developed by the prototype in W
Np=120//The speed of running of the prototype in rpm
d=1000//density of the water in kg/m^3
g=9.81//Acceleration due to gravity in m/s^2
n0=0.85//Overall efficiency of the prototype

//calculations
Nm=((Hm/Hp)^(1/2))*(1/DmDp)*(Np)//Speed of the mpdel in rpm
Qp=Pp/(d*g*n0*Hp)//Discharge from the prototype in m^3/s
Qm=((DmDp)^(3))*(Nm/Np)*(Qp)//Discharge from the model in m^3/s
Pm=((DmDp)^(5))*((Nm/Np)^(3))*(Pp)*10^-3//Power of the model in kW

//output
printf('(a)Speed of the model is %3.1f rpm\n(b)Discharge from the model is %3.3f m^3/s\n(c)Power of the model is %3.1f kW',Nm,Qm,Pm)
