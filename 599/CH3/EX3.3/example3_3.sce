
clear;
clc;
printf("\t Example 3.3\n");
       // a is CO2 and b is water
p=2;              //total pressure at 1 in atm 
pa1=0.2*10^5;     //pressure of CO2 at pt 1 in atm
pa2=0;            //pressure of CO2 at pt 2 is 0 since air is pure
ya1=0.1;          //mole fraction of CO2 at 1 is 0.2/2
ya2=0;            //mole fraction of CO2 at 2 is 0 since air is pure
yb1=0.9;          //mole fraction of water at 1 is (1-0.1)
yb2=1.0;          //mole fraction of water at 2 is 1.0 since total pressure has to be constant.
k_y1=6.78*10^-5;        //mass transfer coefficient in kmol/m^2*s*molefraction

yb_ln=(yb2-yb1)/(log(yb2/yb1));    //log mean is represented by yb_ln

k_y=k_y1/yb_ln; 
printf("\nvalue of mass transfer coefficient k_y is:%f *10^-5 kmol/m^2*s*(molefractin)",k_y/10^-5);
k_g=k_y/p;                        //mass ttransfer coefficient in lmol/m^2*s*atm
printf("\nvalue  mass transfer coefficient k_g is:%f *10^-5 kmol/m^2*s*(atm)",k_g/10^-5);

NA=k_y*(ya1-ya2);                //mass flux in kmol/m^2*s
printf("\nvalue of rate of mass transfer :%f *10^-6 kmol/m^2*s",NA/10^-6); 
//end