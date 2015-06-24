//Example 15.14
//position servomoter
clear;clc;
xdel(winsid());

//Mil= motor inertia referred tothe load side
Mil=20^2*0.45*10^-6  //unit= kg.m^2

//Tr= Transformation ratio of gear train between the loadshaft and the tachogenerator
Tr=20*2  

//til= tachogenerator inertia referred to the load side
til=40^2*0.35*10^-6  //unit= kg.m^2

//Til= total inertia referred to the load side
Til=(20*10^-6)+(1.8*10^-4)+(5.6*10^-4)  //unit= kg.m^2

//Mi= inertia referred to the motor side
Mi=(760*10^-6)/400  //unit= kg.m^2
