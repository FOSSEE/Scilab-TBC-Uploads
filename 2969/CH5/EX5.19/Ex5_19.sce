clc
clear
//DATA GIVEN
r=14;                       //compression ratio
//fuel cut-off is delayed from 5-8%
//for air, gamma=1.4
g=1.4;

//when fuel is cut-off at 5%
c1=5;
rho1=c1/100*(r-1)+1;
//Efficiency of diesel engine ETAdiesel=1-[1/(r)^(g-1)][(rho^g-1)/(rho-1)]
ETAdiesel1=1-[1/g/(r)^(g-1)]*[(rho1^g-1)/(rho1-1)];

//when fuel is cut-off at 8%
c2=8;
rho2=c2/100*(r-1)+1;
//Efficiency of diesel engine ETAdiesel=1-[1/(r)^(g-1)][(rho^g-1)/(rho-1)]
ETAdiesel2=1-[1/g/(r)^(g-1)]*[(rho2^g-1)/(rho2-1)];

ETAloss=(ETAdiesel1-ETAdiesel2)*100;

printf(' The Percentage loss in efficiency due to delay in fuel cut-off is: %1.1f percent. \n',ETAloss);
