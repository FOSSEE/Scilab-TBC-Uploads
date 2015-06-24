

//example 3.8
//calculate
//net depth of irrigation water reqiured
//time required to irrigate field
clc;
//given
Fc=0.22;     //Field capacity
Sg=1.56;     //Apparent specific gravity
d=0.6;       //root zone depth
//irrigation is started when 70 percent of moisture is used
l=250;        //length of field
b=40;         //width of field
q=20;         //Discharge


m=(1-0.7)*Fc;
D=Sg*d*(Fc-m)*1000;
A=l*b;
t=A*D/(q*3600);
D=round(D);
t=round(t);
mprintf("Net depth of irrigation water required=%f mm.",D);
mprintf("\nTime required to irrigate field=%f hours.",t);
