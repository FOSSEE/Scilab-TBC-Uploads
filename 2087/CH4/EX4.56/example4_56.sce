

//example 4.56
//calculate peak discharge of 6 hrs unit hydrograph
clc;funcprot(0);
//given
Q=470;                //peak discharge of flood hydrograph
B=15;                 //base flow
l=0.25;               //infiltration loss
Qr=Q-B;
d=8;                  //average depth of rainfall
re=d-l*6;            //rainfall excess
q=Qr/re;
mprintf("peak discharge of 6 hrs unit hydrograph=%i cumecs.",q);
