
clear;
clc;
printf("\t Example 6_5_c\n");

//part(iii)
    //let us choose the consistency of 11 and 13 readings
Xbar=0;                     //equillibrium moisture content
Ls=4.12;                    //mass of bone dry solid ais the drying surface
A=1;                       //both upper surafce and lower surface are exposed
Nc=0.19;                   //in kg/m^2*hr
X1=.098;                   //moisture content on dry basis  intially
Xcr=.11;                   //kg moisture per kg dry solid
X2=0.074;                   //moisture content on dry basis  finally
tfall=(Ls/(A*Nc))*((Xcr-Xbar)*log((X1-Xbar)/(X2-Xbar)));
printf("\n from this data we get time as :%f hour",tfall);
printf("\n the actual time is 0.8 hours");
//end