clc
clear
//Input data
CV=42000;//The calorific value of the fuel in kJ/kg
pa=5//Percentage of compression
Pa=1.2;//Pressure in the cylinder at 5% compression stroke
pb=75//Percentage of compression
Pb=4.8;//Pressure in the cylinder at 75% compression stroke
g=1.3;//polytropic index
g1=1.4//Isentropic index
n=0.6;//Air standard efficiency


//Calculations
V=(Pb/Pa)^(1/1.3);//Ratio of volumes
r=(V*(pb/100)-(pa/100))/((1-(pa/100))-(V*(1-(pb/100))))//Compression ratio
n1=((1-(1/r)^(g1-1)))*100//Relative efficiency
nthj=n*(n1/100)//Indicated thermal efficiency
x=(1/(CV*nthj))*3600//Specific fuel consumption in kg/kW.h

//Output
printf('The compression ratio of the engine is %3.1f \n The specific fuel consumption is %3.3f kg/kW.h',r,x)
