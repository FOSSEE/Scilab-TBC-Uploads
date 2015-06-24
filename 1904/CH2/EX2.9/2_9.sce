//To detemine the annual loss factor
//Page 58
clc;
clear;

TAE=5.61*(10^6); //Total annual energy in kW
APL=2000; //Annual peak load in kW
Lc=0.03; //Cost of energy per kWh in dollars
Plp=100; //Power at peak load in kW

Fld=TAE/(APL*8760); 
Fls= (0.3*Fld)+(0.7*(Fld^2));
AvgEL=Fls*Plp; //Average energy loss
AEL=AvgEL*8760; //Annual energy loss
Tlc=AEL*Lc; //Cost of total annual copper loss

printf('a) The annual loss factor is %g\n',Fls)
printf(' b) The annual copper loss energy is %g kWh and the cost of total annual copper loss is $%g\n',AEL,Tlc)

