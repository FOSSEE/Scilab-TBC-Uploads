clc;
clear;
Pt=11.5;//Total power in kW
Pc=10;// Carrier power in kW
//a)

m_square=2*((Pt/Pc)-1);
m=sqrt(m_square);//modulation index

//b)
m2=0.5;
mt=sqrt(m^2 +m2^2); 
Pt=Pc*(1+mt^2/2); //total power in kW

disp(m,"modulation index is ");
disp(Pt,"Total carrier power(in kW) ");
