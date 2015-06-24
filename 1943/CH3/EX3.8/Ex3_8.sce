
clc
clear
//Input data
P=100//Power in kW
V=115//Voltage in V
To=1500//Outer temperature in K
Te=1000//Exit temperature in K
Ta=350//Ambient temperature in K
nth=30//Thermal efficiency in percent
nge=92//Generator efficiency in percent
//Properties of thermoelectrons 
a=0.0012//At 1250K in V/K
kp=0.02//In W/cm.K
kn=0.03//In W/cm.K
dp=0.01//In ohm.cm
dn=0.012//In ohm.cm
J=20//Current density in A/cm^2

//Calculations
zmax=(a^2/(sqrt(dp*kp)+sqrt(dn*kn))^2)//Maximum value of figure of merit in K^-1
mo=sqrt(1+(zmax*((To+Te)/2)))//Optimum value of the resistance ratio
nmax=(((To-Te)/To)*((mo-1)/(mo+(Te/To))))*100//Maximum thermal efficiency in percent
Vl=(a*(To-Te)*(mo/(mo+1)))//Voltage per couple in V
nc=(V/Vl)//Number of couples in series
L=((a*(To-Te))/((1+mo)*(dp+dn)))/J//Length in cm
A=((P*Te)/V)/J//Area in cm^2
I=(J*A)//Current in A
Vo=(a*(To-Te))//Voltage in V
Q1=((a*I*To)-((1/2)*(L/A)*I^2*(dp+dn))+((A/L)*(kp+kn)*(To-Te)))/1000//Heat input to the thermoelectric generator in kW
Q2=((a*I*Te)+((A/L)*(kp+kn)*(To-Te))+P)/1000//Heat rejected at full load in kW
Q1n=(((A/L)*(kp+kn)*(To-Te)))/1000//At no load heat input in kW
Q2n=Q1n//At no load heat rejected in kW
no=((nmax/100)+(1-(nmax/100))*(nth/100)*(nge/100))*100//Overall efficiency in percent

//Output
printf('(a) The thermal efficiency of thermocouple generator is %3.1f percent \n (b) The number of thermo couples in series is %i \n (c) The lenght of the thermal elements is %3.3f cm and area is %3.2f cm^2 \n (d) The output open-circuit voltage is %3.1f V \n (e) At full load: \n The heat input is %3.3f kW \n The heat rejected is %3.3f kW \n At no load: \n The heat input is %3.3f kW \n The heat rejected is %3.3f kW \n (f) The overall efficiency of the combined thermo-electric steam power plant is %3.2f percent',nmax,nc,L,A,Vo,Q1,Q2,Q1n,Q2n,no)
