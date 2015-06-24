

//example 8.17
//design practical profile of gravity dam
clc;funcprot(0);
//given
c=1;
rlb=1450;          //R.L of base of dam
rlw=1480.5;        //R.L of water level
Sg=2.4;            //specific gravity of masonary
gamma_w=9.81;      //unit weigth of water
w=1;               //heigth of waves
f=1200;            //safe compressive stress for masonary
FB=1.5*w;
rlt=FB+rlw;        //R.L of top of dam
H=rlt-rlb;         //heigth of dam
LH=f/(gamma_w*(Sg+1))
LH=round(LH*100)/100;
mprintf("Heigth of dam=%f m.",H);
mprintf("\nlimiting heigth of dam=%f m.",LH);
mprintf("\nDam is low gravity dam");
hw=rlw-rlb;
//keep top width,a=4.5.
a=4.5;
P=hw/(Sg^0.5);
P=round(P*10)/10;
mprintf("\nBase width of elementary profile=%f m.",P);
uo=a/16;
wb=uo+P;
wb=round(wb);
mprintf("\nBase width=%f m.",wb);
D=2*a*(Sg^0.5);
D=round(D);
mprintf("\nDistance upto which u/s slope is vertical from water level=%f m.",D);
