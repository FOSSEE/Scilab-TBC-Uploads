clc
clear
//Input data
vCH4=65//Composition by volume of CH4 
vH2=2//Composition by volume of H2
vN2=2//Composition by volume of N2
vCO2=31//Composition by volume of CO2
O2=5.3//Composition of O2 in dry exhaust gases when analysed in orsat apparatus
N2=83//Composition of N2 in dry exhaust gases when analysed in orsat apparatus
CO=0.3//Composition of CO in dry exhaust gases when analysed in orsat apparatus
CO2=11.4//Composition of CO2 in dry exhaust gases when analysed in orsat apparatus
an=79//Air contains 79% by volume of nitrogen 

//Calculations
a=(100/(100-an))*(((vCH4/100)*2)+((vN2/100)*(1/2)))//Total air required for complete combustion of 1 cu.m of gas in cu.m
xCO=(CO/2)//O2 required to burn the CO in cu.m
xCO2=CO//CO2 formed in cu.m 
tO2=O2-xCO//Total O2 in cu.m
tN2=N2//Total N2 in cu.m
tCO2=CO2+xCO2//Total CO2 in cu.m
T=tO2+tN2+tCO2//Total mixture in cu.m
pCO2=(tCO2*100)/T//Percentage of CO2 in percent
mm=(a*100)//Minimum air supply required for complete combustion of 100 cu.m of the gas in cu.m
an2=(an/100)*mm//N2 for this air in cu.m
tn2=(an2+vN2)//Total N2 in cu.m
v=(((vCH4+vCO2)*100)/pCO2)-(vCH4+vCO2+tn2)//Increase in air supply for reduction in percentage of CO2 in cu.m
pea=(v*100)/mm//Percentage of excess air. In textbook it is given wrong as 26.7 percent

//Output
printf('(a) the air-fuel ratio by volume to give complete combustion is %3.3f \n (b) the percentage of excess air actually used in the test is %3.1f percent',a,pea)
