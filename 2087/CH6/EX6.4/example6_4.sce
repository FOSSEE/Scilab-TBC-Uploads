

//example 6.4
//calculate probable life of reservior
clc;funcprot(0);
//given
asi=3.6;                                 //annual sediment inflow(x10^6)
gamma_s=12;                             //specific weigth of sediment
vs=asi/12;
ir=30;                                 //initial reservior capacity
fr=60;                                //final reservior capacity 
r=ir/fr;                              //initial capacity/inflow ratio
//r=0.5; hence we start capacity/inflow ratio from 0.5
c=[0.5:-0.1:0.1];                    //capacity inflow ratio
e=[0.96 0.955 0.95 0.93 0.87];      //trap efficiency
for i=1:4
    ae(i)=(e(i)+e(i+1))/2;            //average efficiency for interval
end
as=[0.2872 0.2857 0.2820 0.2700];    //annual sediment trapped
s=0;
for i=1:4
    y(i)=6/as(i);                  //year to fill
    s=s+y(i);
end
mprintf(" probable life of reservior=%i years.",s);

