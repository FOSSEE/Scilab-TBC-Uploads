

//example 6.9
//calculate minimum storage to meet the demand
clc;funcprot(0);
//given
md=[50 75 80 85 130 120 25 25 40 45 50 60];       //monthly demand
e=[6 8 13 17 22 22 14 11 13 12 7 5];              //evaporation
r=[1 0 0 0 0 19 43 39 22 6 2 1];                  //rainfall
in=[50 40 30 25 20 30 200 225 150 90 70 60];      //monthly inflow
A=30;                                             //area of reservior
Cr=0.4;                                           //run-off coefficient
for i=1:12
    er(i)=0.4*r(i);                               //effective rainfall
    ni(i)=er(i)-e(i);                             //net inflow
    niv(i)=ni(i)*0.01*A;                          //net inflow volume
    nd(i)=md(i)-niv(i);                           //net demand
end
cnd(1)=nd(1);                                    //cumulative demand
ci(1)=in(1);                                     //cumulative inflow
for i=2:12
    cnd(i)=cnd(i-1)+nd(i);
    ci(i)=ci(i-1)+in(i);
end
mprintf("Excess demand:");
for i=1:12
    ed(i)=cnd(i)-ci(i);                          //excess demand
    if ed(i)<0 then 
        es(i)=ed(i);                             //excess supply
        ed(i)=0;
    end
    mprintf("\n%f",ed(i));
end
mprintf("\nminimum storage required=Maximum of excess demand=%f Mm^3.",ed(6));
