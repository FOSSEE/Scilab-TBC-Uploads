

//example 5.23
//calculate
//diameter of well
clc;
//given
h1=2.1;                  //initial pumping depression
h=1.6;                   //heigth after recuperation
t=90;                    //time
h2=h1-h;
KbyA=2.303*60*log10(h1/h2)/t;
Q=10;          //yield(lit/sec)
H=2;
A=Q*3.6/(H*(KbyA));
d=(4*A/%pi)^0.5;
d=round(d*10)/10;
mprintf("\nDaimeter of well=%f m",d);
