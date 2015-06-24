
clear;
clc;
printf("\t Example 3.4\n");
NA=7.5*10^-7;       //mass flux in gmol/cm^2*s
Dab=1.7*10^-5;     //diffusivity if SO2 in water in cm^2/s
c=1/18.02;          //concentration is density/molecular weight in gmol/cm^2*s
    //SO2 is absorbed from air into water

xa1=0.0025;        //liquid phase mole fraction at 1
xa2=0.0003;        //liquid phase mole fraction at 2
    //NA=kc(Ca1-Ca2)=Dab*(Ca1-Ca2)/d
    
k_c=NA/(c*(xa1-xa2));    //k_c=Dab/d=NA/c(xa1-xa2)
printf("\nmass transfer coefficient k_c is:%f cm/s",k_c);

d=Dab/k_c;
printf("\nfilm thickness d is :%f cm",d);
//end