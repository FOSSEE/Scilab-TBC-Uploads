
clc
clear
//Input data
T1=140//Temperature with which feed water enters into economiser in degree C
T2=[25,250]//Temperature from air is preheated to in degree C
P1=60//Pressure with which steam leaves the drum in bar
x1=0.98//Dryness fraction
T3=450//Temperature with which steam leaves the superheater in degree C
cc=25.2//Calorific value of coal in MJ/kg
r=8.5//Rate of evaporation of steam per kg coal 
wf=1//Mass of coal in kg
R=15//Air fuel ratio by mass
Cpa=1.005//Specific heat of air at constant pressure in kJ/kg.K
Cpw=4.2//Specific heat of water at constant pressure in kJ/kg.K

//Calculations
h1=(T1*Cpw)//Enthalpy in kJ/kg
hf=1213.35//Enthalpy in kJ/kg
h2=hf//Enthalpy in kJ/kg
hfg=1571//Enthalpy in kJ/kg
h4=3301.8//Enthalpy in kJ/kg
h3=(hf+x1*hfg)//Enthalpy in kJ/kg
n=((r*(h4-h1))/(wf*cc*1000))*100//Efficiency
he=(r*(h2-h1))/wf*10^-3//Heat transfer in the economiser in MJ/kg
hb=(r*(h3-h2))/wf*10^-3//Heat transfer in the boiler in MJ/kg
hs=(r*(h4-h3))/wf*10^-3//Heat transfer in the superheater in MJ/kg
ha=(R*Cpa*(T2(2)-T2(1)))/wf*10^-3//Heat transfer in the air preheater in MJ/kg
pe=((h2-h1)/(h4-h1))*100//Percentage of total heat absorbed in the economiser in percent
pb=((h3-h2)/(h4-h1))*100//Percentage of total heat absorbed in the boiler in percent
ps=((h4-h3)/(h4-h1))*100//Percentage of total heat absorbed in the superheater in percent

//Output
printf('Efficiency of steam generator is %3.2f percent \n\n Heat transfer per kg fuel in \n (i)economiser is %3.4f MJ/kg \n (ii)boiler is %3.3f MJ/kg \n (iii)superheater is %3.3f MJ/kg \n (iv)air pre-heater is %3.3f MJ/kg \n\n Percentage of total heat absorption taking place in \n (i)economiser is %3.2f percent \n (ii)boiler is %3.2f percent \n (iii)superheater is %3.2f percent',n,he,hb,hs,ha,pe,pb,ps)
