//Exa2.1
clc;
clear;
close;
//Part a : Cost of using aluminium metal for the jet engine part
//given data :
w1=1.2;//in Kg
//let c1=cost of making aluminium casting
//let c2=cost of machining aluminium casting per unit
//let Tc=Total cost of jet engine part made of aluminium per unit
c1=80;//in Rs/Kg
c2=150;//in Rs
Tc1=c1*w1+c2;//in Rs
disp(Tc1,"Total cost of jet engine part made of aluminium per unit in Rs : ");

//Part b : Cost of jet engine part made of steel/unit
//given data :
w2=1.35;//in Kg
//let c1=cost of making steel casting
//let c2=cost of machining steel casting per unit
//let c3=penalty of excess weight of steel casting
//let Tc=Total cost of jet engine part made of steel per unit
c1=35;//in Rs/Kg
c2=170;//in Rs
c3=1300;//in Rs/Kg
Tc2=c1*w2+c2+c3*(w2-w1);//in Rs
disp(Tc2,"Total cost of jet engine part made of steel per unit in Rs : ");
disp(Tc2-Tc1,"DECISION : The total cost/unit of a jet engine part made of aluminium is less than that for an engine made of steel. Hence, aluminium is suggested for making jet engine part. The economic advantage of aluminium over steel per unit in Rs : ")