

//example 11.8
//calculate force to be exerted to lift the gate
clc;funcprot(0);
//given
Ag=5*2.5;          //area of gate
miu=0.25;         //coefficient of friction
w=0.5;            //weigth of gate
h=2;              //head of water over crest
g=9.81;           //acceleration due to gravity
gamma_w=1000;     //unit weigth of water

m=w*g*1000;
F=gamma_w*Ag*h*h*g/10;
ff=miu*F;
tf=(m+ff)/1000;
mprintf("force to be exerted to lift the gate=%f kN.",tf);

