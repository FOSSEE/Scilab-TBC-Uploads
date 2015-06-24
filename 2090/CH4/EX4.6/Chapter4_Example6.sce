clc
clear
//Input data
r=8;//Compression ratio
lcv=44000;//The lower heating value of the fuel in kJ/kg
af=15;//The air/fuel ratio
Cv=0.71;//The specific heat at constant volume in kJ/kgK
p=1;//The pressure at the beginning of the compression in bar
t=60;//The temperature at the beginning of the compression in degree centigrade
Mo=32;//Molecular weight of oxygen
Mn=28.161;//Molecular weight of nitrogen
Mh=18;//Molecular weight of water 
n=1.3;//Polytropic index

//Calculations
T1=(t+273);//The temperature at the beginning of the compression in K
sa=[12.5*[Mo+(3.76*Mn)]]/[(12*8)+(1*Mh)];//The stoichiometric air fuel ratio
Y=af*[[(12*8)+(1*Mh)]/(Mo+(3.76*Mn))];//To balance the oxygen and nitrogen 
x=(12.5-Y)*2;//By oxygen balance 
nb=1+Y+(Y*3.76);//Number of moles before combustion 
na=x+7.8+9+46.624;//Number of moles after combustion 
Me=[(na-nb)/nb]*100;//The percentage molecular expansion in percent
T2=T1*(r)^(n-1);//The temperature at point 2 in K
T3=[lcv/(af+1)]*(1/Cv)+(T2);//The temperature at point 3 in K
p3=r*(T3/T1)*p;//The pressure at point 3 in bar
p31=p3*(na/nb);//The pressure at point 3 with molar expansion in bar

//Output
printf('The percentage molecular expansion is %3.0f percent \n (a) Without considering the molecular expansion \n The maximum temperature is %3.0f K \n The maximum pressure is %3.0f bar \n (b) With molecular expansion \n The maximum temperature is %3.0f K \n The maximum pressure is %3.1f bar ',Me,T3,p3,T3,p31)

