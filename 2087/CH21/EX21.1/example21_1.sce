

//example 21.1
//calculate
//total installed capacity
//load factor
//plant factor
//utilization factor
clc;funcprot(0);
//given
c=10000;               //capacity of each generator;
n=3;                //number of generator
l1=12000;            //initial load on plant
l2=26000;            //final load on plant

tc=n*c;
mprintf("Total installed capacity=%i kW.",tc);

avg=(l1+l2)/2;       //average load
pk=l2;               //peak load
lf=avg*100/pk;
lf=round(lf*10)/10;
mprintf("\nload factor=%f percent.",lf);

//take any time duration t hours
pf=avg*100/tc;
pf=round(pf*10)/10;
mprintf("\nplant factor=%f percent.",pf);

uf=pk*100/tc;
uf=round(uf*10)/10;
mprintf("\nutilization ratio=%f percent.",uf);
