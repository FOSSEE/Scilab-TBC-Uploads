clear;
clc;

//Example11.8[Using the Effectiveness- NTU Method]
//Given:-
mc=1.2,mh=2;//Mass Flow rate of water and geothermal fluid[kg/s]
U=640;//Overall Heat transfer Coefficient[W/m^2.degree Celcius]
Di=0.015;//[m]
Tc_out=80,Tc_in=20;//Outlet and Inlet temp of water[degree Celcius]
Th_in=160;//Inlet temp of geothermal fluid[degree Celcius]
Cp_c=4.18,Cp_h=4.31;//Specific Heats of water and geothermal fluid[kJ/kg.degree Celcius]
//Solution:-
Ch=mh*Cp_h;//[kW/degree Celcius]
Cc=mc*Cp_c;//[kW/degree Celcius]
if(Ch>Cc) then,
    Cmin=Cc;
    c=Cmin/Ch;
else
    Cmin=Ch;
    c=Cmin/Cc;
end
Q_max=Cmin*(Th_in-Tc_in);//[kW]
disp("kW",Q_max,"The maximum heat transfer rate is")
Q_ac=mc*Cp_c*(Tc_out-Tc_in);//[kW]
e=Q_ac/Q_max;
disp(e,"The effectiveness of the heat exchanger is")
NTU=(1/(c-1))*log((e-1)/(e*c-1));
disp(NTU,"The NTU of this counter flow heat exchanger is")
As=NTU*Cmin*1000/U;//[m^2]
disp("m^2",As,"The heat transfer surface area is")
L=As/(%pi*Di);//[m]
disp("m",round(L),"The length of the tube is")