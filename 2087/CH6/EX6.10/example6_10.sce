

//example 6.10
//calculate 
//minimum capacity of reservior
//the initial storage storage required to maintain uniform demand
clc;funcprot(0);
//given
in=[2.83 4.25 5.66 18.4 22.64 22.64 19.81 8.49 7.1 7.1 5.66 5.66];     //inflow(x10^5)
s=0;
for i=1:12
    s=s+in(i);
end
avd=s/12;                                                        //average demand(x10^5)
s=0;t=0;
for i=1:12
    e(i)=avd-in(i);
    if e(i)<0 then
        S(i)=-e(i);                                               //surplus(x10^5)
        s=s+S(i);
    else
        D(i)=e(i);                                              //Deficit(x10^5)
        t=t+D(i);
    end
end

d=(s-(t-D(1)-D(2)-D(3)));
s=s;

mprintf("minimum capacity of reservior=%fD+5 cumec.",s);
mprintf("\nstorage required to maintain uniform demand=%fD+5 cumec",d);
