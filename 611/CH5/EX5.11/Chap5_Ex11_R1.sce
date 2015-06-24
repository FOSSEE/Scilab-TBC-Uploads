// Y.V.C.Rao ,1997.Chemical Engineering Thermodynamics.Universities Press,Hyderabad,India.

//Chapter-5,Example 11,Page 175
//Title: Entropy change of the gas
//================================================================================================================
clear 
clc

//INPUT
V=2;//volume of insulated tank in m^3
Ta=400;//temperature of gas in compartment (a) in K
Pa=3;//pressure of gas in compartment (a) in MPa
Tb=600;//temperature of gas in compartment (b) in K
Pb=1;//pressure of gas in compartment (b) in MPa
R=8.314;//universal gas constant in J/molK

//CALCULATION
Va=V/2;//calculation of volume of compartment (a) in m^3
Vb=V/2;//calculation of volume of compartment (b) in m^3
Na=(Pa*10^6*Va)/(R*Ta);//calculation of number of moles of gas in compartment (a) in mol
Nb=(Pb*10^6*Vb)/(R*Tb);//calculation of number of moles of gas in compartment (b) in mol
//From the first law of thermodynamics, del_U=Q-W=0; since Q=0 and W=0. This implies that Na*Cv*(T-Ta)+Nb*Cv*(T-Tb)=0, therefore, Na*(T-Ta)+Nb*(T-Tb)=0
T=((Na*Ta)+(Nb*Tb))/(Na+Nb);//calculation of final temperature using the above equation in K
N=Na+Nb;//calculation of total number of moles of gas in mol
P=((N*R*T)/V)*10^-6;//calculation of final pressure of gas in MPa
Cp=(5/2)*R;//calculation of isobaric molar heat capacity as given in the problem statement in J/molK
del_S=((Na*((Cp*log(T/Ta))-(R*log(P/Pa))))+(Nb*((Cp*log(T/Tb))-(R*log(P/Pb)))))*10^-3;//calculation of the change in entropy using Eq.(5.43) in kJ/K

//OUTPUT
mprintf("\n Entropy change of the gas=%0.2f kJ/K\n",del_S);


//===============================================END OF PROGRAM===================================================
