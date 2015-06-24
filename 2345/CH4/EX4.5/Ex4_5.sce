//Finding relative permittivity
//Example 4.5(pg 111)
clc
clear
//before inserting the second sheet
d=0.003;//distacne between plates in m^2
K1=6;// relative permittivity of air
Ko=8.854*10^-12;
// capacitance C1=Ko*K1*A/d in Farad
//after inserting the second sheet
d1=0.003;//thickness of first sheet in meter
d2=0.005;//thickness of second sheet in meter
//K2 is unknown
//C2=Ko*A/(d1/K1 + d2/K2)
// but given that C2=(1/3)*C1
//from equations 1,2,3
K2= (d2*K1)/(3*d-d1)
// since Ko*A/(d1/K1 + d2/K2)=Ko*K1*A/3*d
printf('Thus K2 is %3.4f',K2)
