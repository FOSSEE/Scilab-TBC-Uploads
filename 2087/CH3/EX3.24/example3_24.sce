

//example 3.24
//calculate daily consumptive
//discharge in canal
clc;
//given
Fc=0.26;              //Field capacity of soil
A=3000;               //Area of field
OM=0.12;              //optimum moisture 
pwp=0.1;              //permanent wilting point
d=80;                //depth of root zone
RD=1.4;               //relative density of soil
f=10;                 //frequency of irrigation
eita=0.23;            //overall efficiency
D=RD*d*(Fc-OM);
U=D*10/f;
Wr=A*D*100;
q=Wr/(f*24*3600);
q=round(q*100)/100;
mprintf("daily consumptive=%f mm.",U);
mprintf("\ndischarge in canal=%f q cumecs.",q);

