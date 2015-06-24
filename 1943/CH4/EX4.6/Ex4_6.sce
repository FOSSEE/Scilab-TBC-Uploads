
clc
clear
//Input data
C2H6=22.6;//The amount of gas present in the fuel gas according to volumetric analysis of fuel gas by volume in %
CH4=73.6;//The amount of gas present in the fuel gas according to volumetric analysis of fuel gas by volume in %
CO2=2.4;//The amount of gas present in the fuel gas according to volumetric analysis of fuel gas by volume in %
N2=1.4;//The amount of gas present in the fuel gas according to volumetric analysis of fuel gas by volume in %
E=0.25;//Assuming combustion air to be dry and in excess
t=260;//The temperature for the total gas volume for complete combustion in degree centigrade
p=1.013;//The pressure for the total gas volume for complete combustion in bar
Mch=30;//Molecular weight of C2H6
Mc=16;//Molecular weight of CH4
Mco=44;//Molecular weight of CO2
Mn=28;//Molecular weight of N2
Mo=32;//Molecular weight of O2
Mh=18;//Molecular weight of H2O

//Calculations
x=100;//Assuming 100 moles of fuel gas 
Mf=[(C2H6/100)*Mch]+[(CH4/100)*Mc]+[(N2/100)*Mn]+[(CO2/100)*Mco];//Molecular weight of fuel gas
Ma=[(226.3*(Mo+(3.76*Mn))*(1+E))]/28.96;//Moles of air supplied
Mc=1440;//Moles of combustion gas from the equation 
Mr=x+Ma+Mc;//Total reaction molecules
Mwc=[(121.2*Mco)+(215*Mh)+(56.6*Mo)+(1065.4*Mn)]/Mc;//Molecular weight of combustion gas in kg/kgmol
Mt=Mc/(x*20);//Total number of moles of combustion gas per kg fuel gas
VG=Mt*22.4*[(273+t)/273];//Volume of combustion products per kg fuel gas
CO21=(121.2/(121.2+56.6+1065.4))*100;//Gas analysis of CO2 by volume
O21=(56.6/1243.2)*100;//Gas analysis of O2 by volume
N2=(1065.4/1243.2)*100;//Gas analysis of N2 by volume

//Output
printf('(a)The molecular weight of the combustion products M = %3.2f kg/kg mol \n (b) The total gas volume for complete combustion at 260 degree centigrade and 1.013 bar is %3.2f m^3/kg fuel \n (c)The dry flue gas analysis on \n carbondioxide = %3.1f percent \n oxygen = %3.1f percent \n nitrogen = %3.1f percent ',Mwc,VG,CO21,O21,N2)
