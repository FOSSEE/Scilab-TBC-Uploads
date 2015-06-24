clc
clear
//input data
DmDp=1/10//The model ratio to prototype 
Pm=1.84//Power developed by the model in kW
Hm=5//Head developed by the model in m
Nm=480//Speed of the model in rpm
Hp=40//Head developed by the prototype in m

//calculations
Np=((Hp/Hm)^(1/2))*(DmDp)*(Nm)//Speed of the prototype in rpm
Pp=((1/DmDp)^(5))*((Np/Nm)^(3))*Pm//Power developed by the prototype in kW
Nsp=((Np*((Pp)^(1/2)))/((Hp)^(5/4)))//Specific speed of the prototype
Nsm=((Nm*((Pm)^(1/2)))/((Hm)^(5/4)))//Specific speed of the prototype

//output
printf('(a)Power developed by the prototype is %3i kW\n(b)Speed of the prototype is %3.2f rpm\n(c)Specific speed of the prototype is %3.1f\n(d)Specific speed of the model is %3.1f\n Thus the specific speed of the model is equal to the prototype and thus it is verified',Pp,Np,Nsp,Nsm)
