

//example 21.3
//calculate minimum discharge required in the stream
//maximum load factor
clc;funcprot(0);
//given
c=15000;            //installed capacity of plant
lf=0.3;             //load factor
eita=0.82;         //plant efficiency
H=25;              //working head

avg=c*lf;        //average power developed
Q=avg/(9.81*H*eita);
Q=round(Q*100)/100;
mprintf("minimum discharge required in the stream=%f cumecs.",Q);

Q=32;         //for second case
P=9.81*H*Q*eita;
lf=P*100/c;
lf=round(lf*10)/10;
mprintf("\nmaximum load factor=%f percent.",lf);
