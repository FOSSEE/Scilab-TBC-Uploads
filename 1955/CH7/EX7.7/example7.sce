clc
clear
//input data
Np=400//The speed of the prototype in rpm
Qp=1.7//The discharge of the prototype in m^3/s
Hp=36.5//The head of the prototype in m
Pp=720//The power input of the prototype in kW
Hm=9//The head of the model in m
DmDp=1/6//The scale of model to prototype 

//calculations
Nm=((Hm/Hp)^(1/2))*(1/DmDp)*Np//Speed of the model in rpm
Qm=((DmDp)^(3))*(Nm/Np)*(Qp)//Discharge of the model in m^3/s
Pm=((DmDp)^(5))*((Nm/Np)^(3))*Pp//Power required by the model in kW

//output
printf('(a)Speed of the model is %3.2f rpm\n(b)Discharge of the model is %3.4f m^3/s\n(c)Power required by the model is %3.2f kW',Nm,Qm,Pm)
