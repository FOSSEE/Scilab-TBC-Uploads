
clc
clear
//Input data
m=21000//Steam rate in kg/h
p1=17//Pressure in bar
T1=230+273//Temperature in K
P=132.56//Power in kW
x2=0.957//Dryness fraction
p2=3.5//Pressure in bar
Pl=1337.5//Power in l.p turbine in kW
p3=0.3//Pressure in bar
x3=0.912//Dryness fraction

//Calculations
h1=2869.7//Enthalpy in kJ/kg
s1=6.5408//Entropy in kJ/kg.K
h2=(870.44+x2*1924.7)//Enthalpy in kJ/kg
h3=h2//Enthalpy in kJ/kg
h56=(Pl*3600)/m//Difference in Enthalpy in kJ/kg
h6=(289.23+x3*2336.1)//Enthalpy in kJ/kg
h5=2649.04//Enthalpy in kJ/kg
s4s=s1//Entropy in kJ/kg.K
x4s=(s4s-1.7275)/5.2130//Dryness fraction
h4s=584.33+x4s*2148.1//Enthalpy in kJ/kg
w=(P/(h1-h2))//Flow rate in kg/s
ws=(m/3600)//Steam flow rate in kg/s
h4=((ws*h5)-(w*h3))/(ws-w)//Enthalpy in kJ/kg
x4=(h4-584.33)/2148.1//Dryness fraction
W=(ws-w)*(h1-h4)//Power developed by h.p turbine in kW
n=((h1-h4)/(h1-h4s))*100//Isentropic efficiency in percent

//Output
printf('(a) the steam quality at the exhaust of the h.p turbine is %3.3f \n (b) the power developed by the h.p turbine is %3.2f kW \n (c) the isentropic efficiency of the h.p turbine is %3.2f percent',x4,W,n)
