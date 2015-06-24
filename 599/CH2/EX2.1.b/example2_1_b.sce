
clear;
clc;
printf("\t Example 2_1_b\n");
// let A denote Hydrogen chloride and B denote air

//"part(ii)"
rA=.3339;
rB=.3711;
rAB=(rA+rB)/2;                        //molecular seperation at collision 
ebyk_A=344.7;
ebyk_B=78.6;
ebyk_AB=(ebyk_A/ebyk_B)^.5;           //energy of molecular attraction
pt=200*10^3;                          //absolute total pressure in pascal
T=298;                                //absolute temperature in kelvin
s=T/ebyk_AB;                        //collision function
    //from chart f(T/ebyk_AB) = 0.62   let it be = x
x=0.62;                                //collision function
MA=36.5;                               //molecular weight of hydrogen chloride
MB=29;                                //molecular weight of air
Mnew=((1/MA)+(1/MB))^.5;
Dab=10^-4*(1.084-.249*(Mnew))*T^1.5*((Mnew))/(pt*x*rAB^2);
printf("\n the diffisivity of hydrogen chloride-air is :%f *10^-6 m^2/s",Dab/10^-6)

//end