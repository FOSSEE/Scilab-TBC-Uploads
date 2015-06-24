clc
clear
//Input data
dw=1000;//Density of water in kg/m^3
dh=13590;//Density of Hg in kg/m^3
Pa=400;//Pressure at A in kPa
g=9.81;//Gravity in N/m^2
Zw1=2.5;//First level of water in m
Zw2=0.4;//Second level of water in m
Zh=0.6;//Level of Hg in m

//Calculations 
Pw1=dw*g*Zw1;//First level of water pressure in N/m^2
Pw2=dw*g*Zw2;//Second level of water pressure in n/m^2
Ph=dh*g*Zh;//Pressure of Hg in N/m^2
Pb=((Pa*1000)+Pw1+Pw2-Ph)/1000;//Pressure exercted at B in kPa

//Output
printf('Pressure exercted at B Pb = %3.4f kPa',Pb)
