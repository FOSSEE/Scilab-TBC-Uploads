clc
clear
//Initalization of variables
s2=1.5263
sfg=1.8456
sf=1.9782 
h2=1201.1 //Btu/lb
hf=1106 //Btu/lb
hfg=1036.3 //Btu/lb
v=0.01616 //m^3/kg
p2=250 //psia
p1=1//psia
J=778
//calculations
x3=1+ (s2-sf)/sfg
h3=hf-(1-x3)*hfg
h4=69.7
Wp=v*144*(p2-p1)/J
h1=h4+Wp
etat=((h2-h3)-Wp)/(h2-h1) *100
eta2=(h2-h3)/(h2-h4)*100
//results
printf("\n In case 1, Efficieny = %.2f percent",etat)
printf("\n In case 2, Efficieny = %.2f percent",eta2)
