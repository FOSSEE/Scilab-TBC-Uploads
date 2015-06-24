

//example 6.3
//calculate storage capacity of reservior
clc;funcprot(0);
//given
V=475;            //flow required to be maintained throughout the year
Y=V*365*8.64;     //yearly demand
//yearly demand gives the slope of demand curve
t=[0:1:36];           //number of season startin from 1960;each year is diveded into 3 seasons.
q=[0 1050 300 50 3000 250 40 3500 370 90 2000 150 120 1200 350 65 1400 400 100 3600 200 80 3000 200 80 3000 150 120 700 210 50 800 120 80 2400 320 120 3200 280 80];    //average discharge
v=[0 0.9707 0.4717 0.0328 2.7734 0.3981 0.0263 3.2357 0.5818 0.0591 1.8490 0.2356 0.0788 1.1094 0.5504 0.0427 1.2943 0.6290 0.0657 3.3281 0.3145 0.0525 2.7734 0.2359 0.0788 0.6441 0.3302 0.028 0.7396 0.1887 0.0525 2.2188 0.5032 0.0788 2.9583 0.4403 0.0525];        //voloume
cv(1)=v(1);
for i=2:37
    cv(i)=cv(i-1)+v(i);
end
//each year is divided into three seasons(monsoon,winter and summer).and readings are taken for 12 years
//mass inflow curve is plotted and tangent are drawn at the apexes and parellel to demand curve slope;
//the respectiv ordinates represent the deficiency during dry period
//maximum of these ordinates gives the desired reservior capacity
mprintf("storage capacity of reservior=1.6 million ha-m.");

