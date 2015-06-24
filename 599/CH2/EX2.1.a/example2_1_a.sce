
clear;
clc;
printf("\t Example 2_1_a\n");
// let A denote nitrogen and B denote carboondioxide
rA=.3798;
rB=.3941;
rAB=(rA+rB)/2;                        //molecular seperation at collision 
ebyk_A=71.4;
ebyk_B=195.2;
ebyk_AB=(ebyk_A/ebyk_B)^.5;           //energy of molecular attraction
pt=1.013*10^5;                       //absolute total pressure in pascal
T=298;                                //absolute temperature in kelvin
s=T/ebyk_AB;                        //collision function
    //from chart f(T/ebyk_AB) = 0.5   let it be = x
x=.5;                                //collision function
MA=28;                               //molecular weight of nitrogen
MB=44;                               //molecular weight of carbondioxide
Mnew=((1/MA)+(1/MB))^.5;
Dab= 10^-4*(1.084-.249*(Mnew))*T^1.5*((Mnew))/(pt*x*rAB^2);
printf("\n the diffisivity of nitrogen-carbondioxide is :%f *10^-5 m^2/s",Dab/10^-5)

//end