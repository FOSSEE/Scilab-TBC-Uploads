clc;
clear;
v1=30;//m/s
h1=3348;//kJ/kg
v2=60;//m/s
h2=2550;//kJ/kg

//energy equation   
//wshaftin=Wshaftin/m= (h2-h1 + ((v2^2)-(v1^2))/2)
//wshaftout=-wshaftin
wshaftout=h1-h2 + (((v1^2)-(v2^2))/2000);
disp("KJ/kg",wshaftout,"The work output involved per unit mass of steam through-flow=")
