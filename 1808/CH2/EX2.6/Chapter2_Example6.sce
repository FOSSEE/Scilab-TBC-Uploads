clc
clear
//INPUT DATA
//CaHb + d O2 + c N2 = 8 Co2 + 0.9 CO +8.8 O2+e H2O + 82.3 N2// Stoichiometric equation for combustion of dry products with 100 percent of air
c=82.3;//Nitrogen balance
d=21.9;//(c/d)=3.76 
e=9.3;//Oxygen balance
a=8.9;//Carbon balance
b=18.6;//Hydrogen balance
mf=125.4;//Mass of fuel
Ma=29;//mass of air

//C8.9H18.6 + 21.9 O2 + 82.3 N2 = 8 Co2 + 0.9 CO +8.8 O2+9.3 H2O + 82.3 N2// Stoichiometric equation for combustion of dry products with 100 percent of air

//CALCULATIONS
xm=((c+d)*Ma)/mf;//Air fuel ratio on mass basis
xc=(a*12/(mf))*100;//Carbon composition on mass basis
xh=(b*1/(mf))*100;//Hydrogen composition on mass basis

//C8.9H18.6 +13.5O2 +(13.5*3.76)N2 = 8.9CO2 +9.3H2O +50.8N2//Theoretical combustion equation on mass basis
xth=(13.5+50.8)*Ma/(mf);//Air fuel ratio of theoretical air on mass basis
nth=(xm/xth)*100;//Percentage of theoretical air om mass basis

//OUTPUT
printf('(a)Air fuel ratio is %3.1f kg of air/kg of fuel \n (b)Composition of fuel on mass basis is %3.1f percentage \n (c)Percentage of theoretical air om mass basis %3.i percentage',xm,xh,nth)




