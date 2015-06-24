//Chapter 6
//page no 139
//Given
clear;
clc;
Tj=125;     //in degree celsius
Tamp=60;        //n degree celsius
Pt=1.8;     //in W
RthJ_a =34;         //in k/w(Assumption)
Rth=(Tj-Tamp)/Pt;
printf("\n Rth = %0.0f K/W",Rth);
if Rth>RthJ_a then
    printf("\n No Heat sink is required");
else
    printf("\n Yes,Heat sink is required");
end ;    
  
