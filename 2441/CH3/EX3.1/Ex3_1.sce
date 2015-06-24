//Exa 3.1
clc;clear;close;
format('v',6);
head=205;//m(Mean Head)
A=1000;//km^2(Catchment area)
rf=125;//cm(Annual Rainfall)
a=80;//%(Available rainfall for power generation)
LF=75;//%(Load factor)
head_loss=5;//m(Head Loss)
Eta_turbine=0.9;//Efficiency of turbine
Eta_generator=0.95;//Efficiency of generator
//Calculation
WaterUsed=A*10^6*rf/100*a/100;//m^3/year(Discharge)
WaterUsed=WaterUsed/(365*24*60*60);//m^3/sec
Eff_Head=head-head_loss;//m(Effective Head)
P=735.5/75*WaterUsed*Eff_Head*Eta_turbine*Eta_generator/1000;//MW(Load of station)
Ppeak=P/(LF/100);//MW(Peak Load )
disp(Ppeak,"MW rating of station(MW)");
//type ot turbine
if head>200 then
    disp("Pelton turbine is more suitable because head>200 meter.");
end;
