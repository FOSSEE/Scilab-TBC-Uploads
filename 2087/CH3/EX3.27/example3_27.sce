

//example 3.27
//calculate Duty of water
//discharge required in water course
clc;
//given
A=1000;                //total area
AI=0.7*A;              //area under irrigation
B=15;                  //Base period
d=500;                 //depth of water required during transplantation
R=120;                 //useful rain falling
Wl=0.2;                 //water loss
delta=d-R;
Du=8.64*B*1000/delta;
DuH=Du*(1-Wl);
q=AI/DuH;
q=round(q*100)/100;
mprintf("Duty of water=%i hec/cumec.",Du);
mprintf("\ndischarge required in water course=%f cumecs.",q);
