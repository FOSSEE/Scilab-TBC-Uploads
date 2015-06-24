

//example 3.23
//calculate irrigation schedule
clc;
//given
Fc=0.18;         //field capacity
wc=0.07;         //wilting cofficient
Sg=1.35;         //bulk density of soil
d=1.2;           //root zone depth
m=Fc-wc;
mo=wc+m/3;
dw=100*Sg*d*(Fc-mo);
mprintf("Depth of water required=%f cm",dw);
ev1=1.1;         //average evapotranspiration rates in 1 NOV-30 NOV
ev2=1.7;         //average evapotranspiration rates in 1 DEC-31 DEC
ev3=2.4;         //average evapotranspiration rates in 1 JAN-31 JAN
ev4=1.5;         //average evapotranspiration rates in 1 FEB-28 FEB
ev5=3.5;         //average evapotranspiration rates in 1 MAR-25 MAR
//irrigation requirement from 1 NOV to 3 JAn
dev=(ev1*30+ev2*31+ev3*3)/10;
mprintf("\n\nWater consumed by evapotranspiration=%f cm.",dev);
mprintf("\nNo water is required during 1 NOV-3 JAN");

//irrigation requirement after 3rd JAN
ws=(ev3-1.5)*16/10;             //water consumed from soil from 4 JAN-19 JAN
ts=ws+dev;                //water withdrawn from soil from 1 NOV-19 JAN
s=(dw-ts)*10;
day=s/ev3;
depth=ts+(4*ev3)/10+(2*ev3)/10;
mprintf("\n\ndepth of water required in first irrigation=%f cm.",depth);
///irrigation requirement from 26 JAn to 25 MAR
w1=ev3*6;
w2=ev4*28;
w3=ev5*25;
W=w1+w2+w3;
x=(dw*10-(14.4+42))/ev5;
mprintf("\n\nHence second irrigation is required after %f days i.e on 18th March.",x);
depth1=(W-(dw*10))/10;
mprintf("\nrequired water depth=%f cm",depth1);
mprintf("\n\nFirst Watering on 29 JAn and 30 JAN=%f cm.\nSecond watering required on 18th March=%f cm.",depth,depth1);


