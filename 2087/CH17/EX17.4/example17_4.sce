

//example 17.4
//design an open flume outlet
clc;funcprot(0);
//given
Q=0.06;           //discharge
D=0.85;           //full supply depth
Hw=15;             //available working head
Bt=7;C=1.6;      //let us choose
H=(Q*100/(C*Bt))^(2/3);
mh=0.2*H;        //minimum modular head
mh=round(mh*1000)/1000;
mprintf("minimum modular head=%f m. < available working head.\nhemce,design is safe.",mh);
o=H/D;
o=round(o*1000)/1000;
mprintf("\nsetting of outlet=%f. <0.9.\nhence,outlet will work as hyper propotional outlet.",o);
