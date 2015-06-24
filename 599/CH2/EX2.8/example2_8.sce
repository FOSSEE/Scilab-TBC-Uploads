
clear;
clc;
printf("\t Example 2.8\n");
//position 1    moles       molefraction    weight
//   ethanol    0.1478         0.02775      6.80
//   water      5.18           0.9722       93.20

//position 2    moles      molefraction      weight
//    ethanol   0.235         0.0453        10.8
//   water      4.96        0.9547          89.20
z=0.4*10^-2;                   //film thickness sorrounding the crystal
xa1=0.0453;                  //mole fraction of ethanol at pos.2
xa2=0.02775;                //mole fraction of ethanol at pos.1
w1=46;                    //molecular weight of ethanol
w2=18;                   //molecular weight of water
Dab=74*10^-5*10^-4;    //diffusivity of ethanol water sol.in m^2/s
    //av=d/m
Mavg1=xa2*w1+(1-xa2)*w2;        //average molecular wght of solution at pos 1
d1=0.9881*10^3;                // density of 6.8 wt%  solution
av1=d1/Mavg1;                 //value of (d/m) of copper solution

    //for pure water
d2=972.8;                                      // density of 10.8 wt%  solution
Mavg2=xa1*w1+(1-xa1)*w2;                      //average molecular wght of solution at pos.2
av2=d2/Mavg2;                               //value of (d/m) of water

allavg=(av1+av2)/2;                        //average value of d/m
Na=Dab*(allavg)*log((1-xa2)/(1-xa1))/z;   //steady state flux in kmol/m^2*s of ethanol water sol.
printf("\n the rate at which crystal dissolves :%f *10^-5 kmol/m^2*s",Na/10^-5);
//end