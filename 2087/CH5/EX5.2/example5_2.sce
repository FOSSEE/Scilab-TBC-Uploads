

//example 5.2
//calculate
//yield from well
//diameter of well
clc;
//given
h1=2.5;                  //initial pumping depression
h=1.8;                   //heigth after recuperation
t=80;                    //time
h2=h1-h;
KbyA=2.303*60*log10(h1/h2)/t;


//Part (a)
d=4;           //diameter of well
H=3;           //depression head
A=%pi*d^2/4;
Q=(KbyA)*A*H/3.6;
mprintf("Part (a)");
Q=round(Q);
mprintf("\nYield from well=%f lit/sec.",Q);

//Part (b)
Q=8;          //yield(lit/sec)
H=2;
A=Q*3.6/(H*(KbyA));
d=(4*A/%pi)^0.5;
d=round(d*10)/10;
mprintf("\nPart (b)");
mprintf("\nDaimeter of well=%f m",d);


