

//example6.2
//calculate required useful storage
clc;funcprot(0);
//given
in=[8.6 2.2 1.8 0 0 13.5 280.6 510.2 136 52.5 20.6 12.3];      //inflow(ha-m)
pan=[2.2 2.3 3.1 8.6 12.8 15.6 12.3 10.6 10 8.2 5.8 3];       //pan evaporation
p=[0.8 1.2 0 0 0 4.8 12.2 18.6 8.6 1.5 0 0]                   //precipitation
D=[14.5 15.8 16.2 16.8 17.5 18 18 17 16.5 16 15.8 15];        //Demand
s=0;
for i=1:12
    if in(i)<10 then
        r(i)=in(i);                                       //D/S requirement
    else
        r(i)=10;
    end
    E(i)=3.6*pan(i);                                     //Evaporation over reservior area
    P(i)=3.5*p(i);                                       //Precipitation
    I(i)=in(i)-r(i)-E(i)+P(i);                           //Adjusted inflow
    S(i)=D(i)-I(i);                                      //Water required from storage
    if S(i)<0 then
        S(i)=0;
    end
    s=s+S(i);
end
mprintf("required useful storage=%f ha-m.",s);
