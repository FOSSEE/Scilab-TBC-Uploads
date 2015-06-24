
clc
clear
//Input data
p1=40//Initial pressure of steam in bar
T1=500//Initial temperature of steam in degree C
m1=5500//Rate of steam in kg/h
p2=2//Pressure of steam after expansion in bar
n1=0.83//Isentropic efficiency 
q=0.87//Quality
m2=2700//Mass flow rate in kg/h
p3=0.1//Pressure of steam after expansion in l.p turbine in bar
n2=0.78//Isentropic efficiency

//Calculations
h1=3445.3//Enthalpy in kJ/kg
s1=7.0901//Entropy in kJ/kg.K which is 1.5301+x2s*5.5970
x2s=(5.5600/5.5970)//dryness fraction
h2s=(504.7+(x2s*2201.9))//Enthalpy in kJ/kg
h2=h1-(n1*(h1-h2s))//Enthalpy in kJ/kg
h3=(504.7+(q*2201.9))//Enthalpy in kJ/kg
h4=((m2*h3+m1*h2)/(m1+m2))//Enthalpy in kJ/kg
x4=(2183.78/2201.9)//dryness fraction
s4=(1.5301+x4*5.5970)//Entropy in kJ/kg.K
x5s=0.8574//dryness fraction
h5s=(191.84+x5s*2392.5)//Enthalpy in kJ/kg
dh4h5=(n2*(h4-h5s))//Difference in enthalpy (h4-h5) in kJ/kg
h6=191.83//Enthalpy in kJ/kg
W1=((m1*(h1-h2))+((m1+m2)*dh4h5))/3600//Power output of the plant in kW
Q1=(m1*(h1-h6))/3600//Heat input in kW
n1=(W1/Q1)*100//Efficiency in percent
WT=(m1*(h1-h2))/3600//Power output without the geothermal heat supply in kW
Q2=(m1*(h1-h6))/3600//Heat input without the geothermal heat supply in kW
n2=(WT/Q2)*100//Efficiency of the cycle without the geothermal heat supply in percent

//Output
printf('(a)Power output of the cycle is %3.1f kW \n Efficiency of the cycle is %3.1f percent \n\n (b)Without geothermal heat supply \n Power output of the cycle is %3.2f kW \n Efficiency of the cycle is %3.2f percent',W1,n1,WT,n2)
