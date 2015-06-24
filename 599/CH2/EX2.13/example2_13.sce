
clear;
clc;
printf("\t Example 2.13\n");
//position 1        moles       molefraction    weight
//   acetic acid    0.15         0.0288          9
//   water           5           0.9712          91

//position 2         moles      molefraction      weight
//    aceitic acid     0.05         0.0092           4
//   water             5.389        0.9908          96
T=290;                         //temperature in kelvin
z=2*10^-3;                    //film thickness sorrounding the water
xa2=0.0092;                  //mole fraction of ethanol at pos.2
xa1=0.0288;                 //mole fraction of ethanol at pos.1
w1=60;                     //molecular weight of acetic acid
w2=18;                    //molecular weight of water
Dab=0.95*10^-9;           //diffusivity of acetic water sol.in m^2/s
    //av=d/m
Mavg1=xa1*w1+(1-xa1)*w2;        //average molecular wght of solution at pos 1
d1=1012;                       // density of 10 % acid
av1=d1/Mavg1;                 //value of (d/m) of copper solution

    //for position 2
d2=1003;                    //density of 4% acid
Mavg2=xa2*w1+(1-xa2)*w2;    //average molecular wght of solution at pos.2
av2=d2/Mavg2;               //value of (d/m) of water

allavg=(av1+av2)/2;        //average value of d/m
        
        //assuming water to be non diffusing
        
Na=Dab*(allavg)*log((1-xa2)/(1-xa1))/z;    //diffusion rate of acetic acid aacross film of non diffusing water sol.
printf("\n diffusion rate of acetic acid aacross film of non diffusing water sol. :%f *10^-7 kmol/m^2*s",Na/10^-7);
//end