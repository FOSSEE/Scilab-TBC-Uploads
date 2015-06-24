clc
//initialisation of variables
do= 1570 //kg/m^3
mo= 0.545 //kg
M1= 7.59 //kg
M2= 4.78 //kg
M3= 3.007 //kg
w= 0.102 //
dmax= 19 //KN/m^3
//calculations
Ms= M1-M2
Mc= Ms-mo
Vh= Mc/do
Dc= M3/Vh
Du= Dc*9.81/1000
f= Du/(1+w)
Rc= f*100/dmax
//results
printf ('dry unit weight of compaction in the field = % 2f kN/m^3 ',f)
printf ('relative compaction in the field = % f ',Rc)
