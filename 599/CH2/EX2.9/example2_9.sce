
clear;
clc;
printf("\t Example 2.9\n");
//position 1        kmoles       molefraction    weight
//   acetic acid    0.167         0.0323      10
//   water           5           0.9677       90

//position 2         kmoles      molefraction      weight
//    aceitic acid     0.067         0.0124        4
//   water             5.33        0.9876          96

            //basis : 100kg of mixture
z=2*10^-3;                    //film thickness sorrounding the water
xa1=0.0323;                   //mole fraction of ethanol at pos.2
xa2=0.0124;                  //mole fraction of ethanol at pos.1
w1=60;                      //molecular weight of acetic acid
w2=18;                     //molecular weight of water
Dab=0.000095;             //diffusivity of acetic water sol.in m^2/s
    //av=d/m
Mavg1=xa1*w1+(1-xa1)*w2;    //average molecular wght of solution at pos 1
d1=1013;                    // density of 10 % acid
av1=d1/Mavg1;              //value of (d/m) of copper solution

    //for pure water
d2=1004;                    //density of 4% acid
Mavg2=xa2*w1+(1-xa2)*w2;    //average molecular wght of solution at pos.2
av2=d2/Mavg2;                //value of (d/m) of water

allavg=(av1+av2)/2;        //average value of d/m
        //assuming water to be non diffusing
Na=Dab*(allavg)*log((1-xa2)/(1-xa1))/z;    //diffusion rate of acetic acid aacross film of non diffusing water sol.
printf("\n diffusion rate of acetic acid aacross film of non diffusing water sol. :%f kmol/m^2*s",Na);
//end