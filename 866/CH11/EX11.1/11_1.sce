clc
//initialisation of variables
Lab= 2 //m
Lbc= 0.5 //m
Dab= 200 //mm
Dbc= 100 //mm
T= 50 //KNm
G= 80000 //N/mm^2
//CALCULATIONS
Jab= %pi*Dab^4/32
Jbc= %pi*Dbc^4/32
Tc= T/((Lbc*Jab)/(Lab*Jbc)+1)
Ta= T-Tc
if(Dab<Dbc)
    Dbc=Dab;Tc=Ta;
else
    Dab=Dab;Tc=Tc
end
Stressmax= (Tc*10^6*Dbc*32)/(2*%pi*Dbc^4)
angleoftwist= Ta*10^6*Lab*32*10^3*180/(G*%pi*Dab^4*%pi)
//RESULTS
printf ('Stress max= %.1f N/mm^2',Stressmax)
printf (' \n Anlge of twist=% 2f degrees',angleoftwist)
