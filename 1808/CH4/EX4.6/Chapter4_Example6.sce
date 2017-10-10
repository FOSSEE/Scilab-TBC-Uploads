clc
clear
//INPUT DATA
pb=15;//Saturated vapour in bar
pc=0.1;//Saturated liquid in bar
pcr=0.05;//Saturated liquid in bar
x2=0.95;//Quality of steam
m=50;//Steam flow rate
Tmax=350;//temperature in degree C
Tmin=45.8;//temperature in degree C
h1=3147.5;//Enthalpy in kJ/kg
S1=7.102//Entropy in kJ/kg.K
h41=191.8;//Enthalpy in kJ/kg
v41=0.001001;//Specific volume in m^3/kg
h7=2584.7;//Enthalpy in kJ/kg
h4=137.8;//Enthalpy in kJ/kg
v4=0.001005//Specific volume in m^3/kg
S6=8.395;//Entropy in kJ/kg.K
S4=0.476;//Entropy in kJ/kg.K
h6=2561.5;//Enthalpy in kJ/kg

//CALCULATIONS
h2=h41+x2*(h7-h41);//Enthalpy in kJ/kg
x3=((S1-S4)/(S6-S4));//quality of steam
h3=h4+x3*(h6-h4);//Enthalpy in kJ/kg
h51=h41+v41*(pb-pc);//Enthalpy in kJ/kg
h5=h4+v4*(pb-pcr);//Enthalpy in kJ/kg
nRi=(((h1-h2)-(h51-h41))/(h1-h51))*100;//Ideal rankine efficiency
P=(m*((h1-h2)-(h51-h41)));//Power in kW
ssc=((m*3600)/P);//Specific steam consumption in kg/kW.hr
nC=((Tmax-Tmin)/(Tmax+273))*100;//carnot efficiency in percentage
nRi1=(((h1-h3)-(h5-h4))/(h1-h5));//Change in rankine efficiency
P1=(m*((h1-h3)-(h5-h4)));//power in kW
ssc1=((m*3600)/P1);//Specific steam consumption in kg/kW.hr


//OUTPUT
printf('(i) The Ideal Rankine efficiency is %3.1f percent \n(ii) The specific steam consumption is %3.3f kg/kwh \n(iii)The carnot efficiency for temp limits is %3.1f percent\n(iv)change in rankine efficiency is %3.2f kg/kW.hr',nRi,ssc,nC,ssc1)
