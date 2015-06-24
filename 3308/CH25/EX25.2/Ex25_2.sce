clc 
// Given that
D=10//in inch Grinding Wheel diameter
N=4000//in rpm 
w=1//in inch 
d=0.002//in inch depth of cut
v=60//inch/min feed rate of the workpiece

// Sample Problem on page no. 715

printf("\n # force in Surface Grinding # \n")

Mrr=d*w*v//material removal rate
//for low carbon steel , the specific energy is 15hp min/in3
u=15//in hp min/in3
P=u*Mrr*396000//in lb/min
Fc = P/(2*3.14*N*(D/2))

printf("\n\n Cutting Force = %f lb",Fc)
// Answer in the book is approximated to 5.7 lb

// from the experimental data in book thrust force is taken as 30% higher than cutting force
Fn = Fc+(30/100)*Fc

printf("\n\n Thrust Force = %f lb",Fn)
// Answer in the book is approximated to 7.4 lb






