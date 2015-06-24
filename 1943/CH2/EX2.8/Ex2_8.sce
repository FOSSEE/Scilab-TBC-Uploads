
clc
clear
//Input data
Pl=5.6//Power load in MW
Hl=1.163//Heat load in MW
p1=40//Pressure in bar
T1=500+273//Temperature in K
p2=0.06//Pressure in bar
p3=2//Pressure in bar
CV=25//Calorific value in MJ/kg
n=88//Boiler efficiency in percent
T=6//Temperature rise in degree C

//Calculations
h1=3445.3//Enthalpy in kJ/kg
s1=7.0901//Entropy in kJ/kg.K
s2=s1//Entropy in kJ/kg.K
s3=s1//Entropy in kJ/kg.K
x2=(s2-1.5301)/5.5970//Dryness fraction
h2=2706.7//Enthalpy in kJ/kg
h26=2201.9//Difference in enthalpy in kJ/kg
w=(Hl*10^3)/h26//Rate of steam extraction in kg/h
x3=(s1-0.52)/7.815//Dryness fraction
h3=(149.79+x3*2416)//Enthalpy in kJ/kg
h4=149.79//Enthalpy in kJ/kg
ws=((Pl*10^3+(w*(h2-h3)))/((h1-h2)+(h2-h3)))//Steam generation capacity in kg/s
ws1=(ws*3600)/1000//Steam generation capacity in t/h
h7=(504.7+(1.061*10^-3*(p1-p3)*100))//Enthalpy in kJ/kg
h5=(149.79+(1.006*100*p1*10^-3))//Enthalpy in kJ/kg
Q1=(((ws-w)*(h1-h5))+(w*(h1-h7)))//Heat input in kW
wf=((Q1/1000)/((n/100)*CV))*(3600/1000)//Fuel burning rate in t/h
Q2=((ws-w)*(h3-h4))//Heat rejected to the condensor in kW
wc=(Q2/(4.187*T))/1000//Rate of flow of cooling water in m^3/s

//Output
printf('(a) the steam generation capacity of the bolier is %3.2f t/h \n (b) the heat input to the boiler is %3.1f kW \n (c) the fuel burning rate of the bolier is %3.3f t/h \n (d) the heat rejected to the condensor is %3.0f kW \n (e) the rate of flow of cooling water in the condensor is %3.3f m^3/s',ws1,Q1,wf,Q2,wc)
