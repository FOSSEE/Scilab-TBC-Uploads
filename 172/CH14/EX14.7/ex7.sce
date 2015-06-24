//ques7
//percent deviation using specific volume calculated by kays rule and vander waals rule
clear
clc
//a-denotes C02
//b-denotes CH4
T=310.94;//Temperature of mixture K
P=86.19;//Pressure of mixture in MPa
//Tc- critical Temperature
//Pc-critical pressure
Tca=304.1;//K
Tcb=190.4;//K
Pca=7.38;//MPa
Pcb=4.60;//MPa
Ra=0.1889;//gas constant for a in kJ/kg.K
Rb=0.5183;//gas constant for b in kJ/kg.K
xa=0.8;//fraction of CO2
xb=0.2;//fraction of CH4
Rm=xa*Ra+xb*Rb;//mean gas constant in kJ/kg.K
Ma=44.01;//molecular mass of a
Mb=16.043;//molecular mass of b
//1.Kay's rule
ya=xa/Ma/(xa/Ma+xb/Mb);//mole fraction of a
yb=xb/Mb/(xa/Ma+xb/Mb);//mole fraction of b
Tcm=ya*Tca+yb*Tcb;//mean critical temp in K
Pcm=ya*Pca+yb*Tcb;//mean critical pressure n MPa
//therefore pseudo reduced property of mixture
Trm=T/Tcm;
Prm=P/Pcm;
Zm=0.7;//Compressiblity from generalised compressibility chart
vc=Zm*Rm*T/P/1000;//specific volume calculated in m^3/kg
ve=0.0006757;//experimental specific volume in m^3/kg
pd1=(ve-vc)/ve*100;//percent deviation
printf('Percentage deviation in specific volume using Kays rule = %.1f percent \n',pd1);   

//2. using vander waals equation
//values of vander waals constant
Aa=27*Ra^2*Tca^2/(64*Pca*1000);
Ba=Ra*Tca/(8*Pca*1000);
Ab=27*Rb^2*Tcb^2/(64*Pcb*1000);
Bb=Rb*Tcb/(8*Pcb*1000);
//mean vander waals constant
Am=(xa*sqrt(Aa)+xb*sqrt(Ab))^2;
Bm=(xa*Ba+xb*Bb);
//using vander waals equation we get cubic equation 
//solving we get
vc=0.0006326;//calculated specific volume in m^3/kg
pd2=(ve-vc)/ve*100;
printf(' Percentage deviation in specific volume using vander waals eqn = %.1f percent \n',pd2); 