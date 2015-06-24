
clear;
clc;
printf("\t Example 6.2\n");
//table    X*100,(kgmoisture/kg dry solid)   N*100 (kg moisture evaporated /hr*m^2)
                
//                35                                    30
//                25                                    30
//                20                                    30
//                18                                    26.6
//                16                                    23.9
//                14                                    20.8
//                12                                    18
//                10                                    15
//                9                                     9.7
//                8                                     7
//                7                                     4.3
//                6.4                                   2.511111


Ls=262.5;                   //mass of bone dry solid ais the drying surface
A=262.5/8;                 //both upper surafce and lower surface are exposed
Nc=0.3;                   //in kg/m^2*hr
x2=.06;                  //moisture content on wet basis  finally after drying
x1=.25;                 //moisture content on wet basis  finally after drying
Xcr=0.20;              //crtical moisture content
X1=x1/(1-x1);                     //moisture content on dry basis  intially
X2=x2/(1-x2);                    //moisture content on dry basis  finally after drying
Xbar=0.025;                     //equillibrium moisture 
 
t1=Ls/(A*Nc) *(X1-Xcr);       //so for constant rate period 

//for falling rate period we find time graphically
p = [.20 .18 .16 .14 .12 .10 .09 .08 .07 .064];
a = [3.3 5.56 6.25 7.14 8.32 10.00 11.11 12.5 14.29 15.625];

plot(p,a,"o-");
title("Fig.6.18 Example2 1/N vs X for fallling rate period");
xlabel("X-- Moisture content, X(kg/kg)");
ylabel("Y-- 1/N, hr,m^2/kg");

Area=1.116;                //area under the curve
t2=Area *Ls/A;            //falling rate period we find time graphically
ttotal=t1+t2;            //total time for drying
printf("\n the total time for drying the wet slab on wet basis is :%f min",ttotal);
//end