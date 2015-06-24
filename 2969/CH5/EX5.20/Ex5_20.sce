clc
clear
//DATA GIVEN
Pm=7.5;                       //mean effective pressure in bar
r=12.5;                       //compression ratio
p1=1;                         //initial pressure in bar

//for air, gamma=1.4
g=1.4;

//mean effective pressure, Pm=p1*r^g*[g*(rho-1)-r^(1-g)*(rho^g-1)]/[(g-1)*(r-1)]
//we get, 0.346(rho)^1.4-1.4(rho)+2.04
//By trial and error method, we get
rho=2.24;

co=(rho-1)/(r-1)*100;         //% cut-off 

printf(' The Percentage cut-off of the cycle is: %2.2f percent. \n',co);
