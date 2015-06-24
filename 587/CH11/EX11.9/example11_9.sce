clear;
clc;

//Example11.9[Cooling Hot Oil by Water in Multipass Heat Exchanger]
//Given:-
Cp_c=4.18,Cp_h=2.13;//Specific Heats of water and oil[kJ/kg]
mc=0.2,mh=0.3;//Mass Flow rate of oil and water [kg/s]
Th_in=150,Tc_in=20;//[degree Celcius]
n=8;//No of tubes
D=0.014;//[m]
L=5;//[m]
U=310;//Overall Heat transfer Coefficient[W/m^2.degree Celcius]
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
As=n*%pi*D*L;//[m^2]
disp("m^2",As,"Heat transfer Surface Area is")
NTU=U*As/Cmin;
disp(NTU,"The NTU of this heat exchanger is")
e=0.47;//Determined from fig 11.26(c)using value of NTU and c
Q=e*Q_max;//[kW]
Tc_out=Tc_in+(Q/Cc);//[degree Celcius]
Th_out=Th_in-(Q/Ch);//[degree Celcius]
disp("degree Celcius",Tc_out,"to","degree Celcius",Tc_in,"The temperature of cooling water will rise from")
disp("degree Celcius",Th_out,"to","degree Celcius",Th_in,"as it cools the hot oil from")