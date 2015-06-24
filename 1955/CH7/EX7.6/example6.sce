clc
clear
//input data
Hp=85//Head of the prototype in m
Qp=(20000/3600)//Flow rate of the prototype in m^3/s
Np=1490//Speed of the prototype in rpm
Dp=1.2//Diameter of the prototype in m
dp=714//Density of the prototype fluid in kg/m^3
Pp=4//Power of the prototype in MW
Pm=500*10^-3//Power of the model in MW
Qm=0.5//Flow rate of the prototype in m^3/s
dm=1000//Density of the model fluid (water) in kg/m^3

//calculations
NpNm=(Qp/Qm)//Ratio of the speeds of the prototype and the model in terms of (Dm/Dp)^(3)
DmDp=1/(((NpNm)^(3))*(dp/dm)*(Pm/Pp))^(1/4)//The ratio of the diameters of model and the prototype or the scale ratio 
NmNp=1/(NpNm*((DmDp)^(3)))//The speed ratio or the ratio of speeds of the model and the prototype
HmHp=((1/NmNp)^(2))*((1/DmDp)^(2))//The head ratio or the ratio of heads of the model and the prototype 

//output
printf('(1)The head ratio of the model is %3.1f\n(2)The speed ratio of the model is %3.1f\n(3)The scale ratio of the model is %3.1f',HmHp,NmNp,DmDp)
