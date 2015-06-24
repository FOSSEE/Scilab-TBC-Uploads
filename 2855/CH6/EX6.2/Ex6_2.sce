//Chapter 6
//page no 140
//Given

clear;
clc;
Tj=120;//in degree celsius
Tamp=80;//n degree celsius
Pt=2.1;//in W 
RthJ_a =34;         //in k/w(Assumption)
Rth=(Tj-Tamp)/Pt;
printf("Rth = %0.0f K/W",Rth);
if Rth>RthJ_a then
    printf("\n No Heat sink is required");
else
    printf("\n Yes,Heat sink is required");
end ; 

