

//example 4.17
//calculate
//drainage desity
//form factor
//channel slope
//average overland flow length
clc;funcprot(0);
//given
A=82;         //area of watershed
d=12.6;       //distance between outlet and farther most point
l=440;        //total length of channel
e=656;        //elevation differnce between outlet and further most point

Dd=l/A;
ff=A/d^2;
cs=e/(d*1000);
lo=1000/(2*Dd);
Dd=round(Dd*100)/100;
ff=round(ff*1000)/1000;
mprintf("drainage desity=%f km/square.km.",Dd);
mprintf("\nform factor=%f.",ff);
mprintf("\nchannel slope=%f.",cs);
mprintf("\naverage overland flow length=%i m.",lo);
