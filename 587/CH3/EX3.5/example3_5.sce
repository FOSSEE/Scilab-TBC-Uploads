clear;
clc;

//Example3.5[Contact Reistance of Transistors]
//Given:-
k=386;//Thermal Conductivity of Copper[W/m.K]
hc=42000;//Contact Conductance coreesponding to copper-aluminium interface for the case of 1.17-1.4 micron roughness and 5MPa[pressure, which is close to given to what we have[W/m^2.K]
Ac=.0008;//Contact area b/w the case and the plate[m^2]
A=0.01;//Plate area for each resistor[m^2]
L=0.01;//Thickness of plate[m]
ho=25;//Heat tranfer coefficient for back surface
T_1=20;//Ambient Temperature[degree Celcius]
T_2=70;//Maximum temperature of case[degree Celcius]
//Solution:-
//Resistances Offered
R_interface=1/(hc*Ac);//Resistance offered at the copper aluminium interface[degree Cecius/W]
R_plate=L/(k*A);//conduction resistance offered by coppr plate[degree Cecius/W]
R_conv=1/(ho*A);//Convection resistance offerd by back surface of casing[degree Cecius/W]
R_total=R_interface+R_plate+R_conv;//[degree Cecius/W]
disp("degree Cecius/W",R_total,"The total thermal Tesistance is")
Q_=(T_2-T_1)/R_total;//[W]
disp("W",Q_,"The rate of heat transferred is")
delta_T=Q_*R_interface;//[degree Celcius]
disp("degree Celcius",delta_T,"The temperature jump at the interface is given by")