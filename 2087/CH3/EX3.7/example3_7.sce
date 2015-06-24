

//example 3.7
//calculate watering frequency
clc;
//Given
Fc=0.27;           //Field capacity
pwp=0.14;         //permanent wilting point
gammad=15;        //dry density of soil
gammaw=9.81;      //unit weigth of water
d=0.75;          //effective depth of root zone
Du=11;          //daily consumptive use of water
Am=Fc-pwp;      //Available moisture
//let readily available moisture be 80 percent of available moisture
RAm=0.8*Am;
Mo=Fc-RAm;
D=gammad*d*(Fc-Mo)*100/gammaw;
WF=D*10/Du;
mprintf("Watering Frequency=%i days.",WF);
