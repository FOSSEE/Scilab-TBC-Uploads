clc;funcprot(0);//Example 1.15
//Initilisation of Variables
L=0.25;......//Thickness of the wheel in m
Tg=400;........//Temparature of gas in degree celsius
Ta=50;.........//Temparature of air in degree celsius
hg=60;........//Heat transfer coefficient of hot gas in W/(m^2*K)
ha=10;........//Heat transfer coefficient of cold gas in W/(m^2*K)
A=3;.....//Surface area of wall in m^2
K=1.5;......//Thermal conductivity of wall material in W/(m*K)
//Calculation
U=1/((1/hg)+(L/K)+(1/ha));.........//Overall Heat transfer coefficient in W/(m^2*K)
Q=U*A*(Tg-Ta);.........//Heat transfer in W
Tsg=Tg-(Q/(hg*A));......//Gas side surface temparature in degree celsius
Tsa=(Q/(ha*A))+Ta;................//Air side surface temparature in degree celsius
disp(U,"1.Overall Heat transfer coefficient in W/(m^2*K):")
disp(Q,"2.Heat transfer in W:")
disp(Tsg,"3.Gas side surface temparature in degree celsius:")
disp(Tsa,"4.Air side surface temparature in degree celsius:")
