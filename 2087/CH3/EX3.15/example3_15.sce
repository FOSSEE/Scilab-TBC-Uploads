

//example 3.15
//calculate 
//duty of irrigation water
//discharge required
clc;
//Given
B=12;         //transplantaion period
D=0.5;        //total depth of water required by the crop
R=0.1;        //rain falling on field
L=0.2;        //loss of water
A=600;        //irrigated area
I=0.6;        //intensity of irrigation
delta=D-R;
Dui=8.64*B/delta;
//since water loss is 20 percent
Du=(1-L)*Dui;
mprintf("Duty of water required=%f hectares/cumec.",Du);

TA=I*A;
q=TA/Du;
q=round(q*100)/100;
mprintf("\nDischarge at head of water course=%f cumecs.",q);
