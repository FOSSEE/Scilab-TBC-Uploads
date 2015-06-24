
clear;
clc;
printf("\t Example 6.4\n");
            
//table X-- .30   .20   .18   .15  .14  .11  .07  .05
//      N-- 1.22  1.22  1.14  .90  .80  .56  .22  .05
//let Ls/A=p
p=48;                   //mass of bone dry solid ais the drying surface
v=1.5*1.5*.5;           //volume of material
Nc=1.22;                //in kg/m^2*hr
Xcr=0.2;                //crtical moisture content
X1=0.25;              //moisture content on dry basis  intially
X2=0.08;               //moisture content on dry basis  finally after drying
Xbar=0.025;           //equillibrium moisture 

//tbar=(Ls/(A*Nc))*((Xcr-Xbar)*log((Xcr-Xbar)/(X2-Xbar)));

t1=p/(Nc) * (X1-Xcr);    //time taken for constant drying rate period 
//table X-- .18     .15     .14   .11     .07     .05
//    1/N-- .8772   1.11   1.25   1.7857  4.545   20

// equillibrium relation is given under
p = [.18 .15 .14 .11 .07 .05];
a = [.8772 1.11 1.25 1.7857 4.545 20];

plot(p,a,"o-");
title("Fig.6.20 Example4 1/N vs X for fallling rate period");
xlabel("X-- Moisture content, X(kg/kg) ---->");
ylabel("Y-- 1/N, hr,m^2/kg ---->");

a=14*.025*1;         //area under the curve
t2=a*48;            //time taken for varying drying period
ttotal=t1+t2;       //total time taken  
printf("\n total time for drying the material from 25 to 8 percent moisture under same drying conditions is :%f hr",ttotal);

//end