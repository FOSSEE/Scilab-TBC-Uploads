clc
clear
//input data
Nm=1000//Speed of the model in rpm
Hm=8//Head of the model in m
Pm=30//Power of the model in kW
Hp=25//Head of the prototype in m
DmDp=1/5//The scale of the model to original

//calculations
Np=((Hp/Hm)^(1/2))*(DmDp)*(Nm)//Speed of the prototype in rpm
Pp=(Pm)*((1/DmDp)^(5))*(Np/Nm)^(3)//Power developed by the prototype in kW
QpQm=((1/DmDp)^(3))*(Np/Nm)//Ratio of the flow rates of two pump(model and prototype)

//output
printf('(1)Speed of prototype pump is %3.1f rpm\n(2)Power developed by the prototype pump is %3i kW\n(3)Ratio of the flow rates of two pumps is %3.4f',Np,Pp,QpQm)
