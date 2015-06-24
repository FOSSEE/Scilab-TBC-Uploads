
clear;
clc;
printf("\t Example 2.4\n");
z=.0305*10^-3;                       //wall thickness sorrounding the crystal
x1=0.0229;
w1=160;                            //molecular weight of copper sulphate
w2=18;                            //molecular weight of water
Dab=7.29*10^-10;                 //diffusivity of copper sulphatein m^2/s
    //av=d/m
Mavg=x1*w1+(1-x1)*w2;           //average molecular wght of solution
d1=1193;                       //density of copper sulphate solution
av1=d1/Mavg;                  //value of (d/m) of copper solution

    //for pure water
d2=1000;                            //density of water
m2=18;                             //molecular wght of water
av2=d2/m2;                        //value of (d/m) of water
allavg=(av1+av2)/2;              //average value of d/m
xa2=0;
Na=Dab*(allavg)*log((1-xa2)/(1-x1))/z;    //flux of cuso4 from crystal surface to bulk solution
printf("\n the rate at which crystal dissolves :%f *10^-5 kmol/m^2*s",Na/10^-5);
//end