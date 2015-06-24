

//example 6.8
//calculate outflow hydrograph
clc;funcprot(0);
//given
I=[35 55 92 130 160 140];   //inflow(cumec/sec)
x=0.28;K=1.6;              //studied value
t=6;
K=K*24;                    //in hours
co=(-K*x+0.5*t)/(K-K*x+0.5*t);
c1=(K*x+0.5*t)/(K-K*x+0.5*t);
c2=(K-K*x-0.5*t)/(K-K*x+0.5*t);
c=co+c1+c2;
//c=1; which implies (OK)
//from Muskingum equation
O(1)=35;
mprintf("outflow hydrograph:\n%f",O(1));
for i=2:6
    p1(i)=co*I(i);
    p2(i)=c1*I(i-1);
    p3(i)=c2*O(i-1);
    O(i)=p1(i)+p2(i)+p3(i);
    O(i)=round(O(i)*100)/100;
   mprintf("\n%f",O(i));
end

