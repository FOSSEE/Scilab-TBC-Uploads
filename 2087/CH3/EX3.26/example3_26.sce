

//example 3.26
//calculate watering interval
clc;
//given
Fc=0.3;          //field capacity
pwp=0.11;        //permanent wilting percent
gammad=1300;     //density of soil
gammaw=1000;     //density of water
d=700;           //root zone depth
CW=12;           //daily consumptive use of water
WHC=Fc-pwp;
mo=Fc-(0.75*WHC);
D=gammad*d*(Fc-mo)/gammaw;
I=D/CW;
mprintf(" watering interval=%i days",I); 

