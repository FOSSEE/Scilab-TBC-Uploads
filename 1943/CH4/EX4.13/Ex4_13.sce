
clc
clear
//Input data
CV=20;//Calorific value of the fuel in MJ/kg
C=65;//The amount of carbon present in the fuel according to gravimetric analysis in %
H=25;//The amount of hydrogen present in the fuel according to gravimetric analysis in %
O=10;//The amount of oxygen present in the fuel according to gravimetric analysis in %
p1=1;//Pressure at the inlet of the compressor in bar
t1=27;//Temperature at the inlet of the compressor in degree centigrade
p2=4;//The pressure which compressor compresses it isentropically in bar
Re=78;//The regenerator effectiveness in %
CO2=6;//The amount of carbondioxide according to the analysis of dry exhaust gas in %
CO=1.5;//The amount of carbonmonoxide according to the analysis of dry exhaust gas in %
Cp=1.005;//Specific heat capacity of the air in kJ/kgK
i=1.44;//Isentropic index for the air
Cp1=1.15;//Specific heat capacity of the air in kJ/kgK
i1=1.33;//Isentropic index for the combustion products
Mc=12;//Molecular weight of the carbon 
Mh=2;//Molecular weight of the hydrogen
Mo=32;//Molecular weight of the oxygen
Mho=18;//Molecular weight of water
T0=288;//Datum temperature in K (Assumed)

//Calculations
h=(C/100)/(Mc);//Equating coefficients of the carbon from the equation 
e=(H/100)/Mh;//Equating coefficients of the hydrogen from the equation 
y=(CO/100)/(CO2/100);//From dry exhaust gas analysis for solving
a=h/(1+y);//The coefficient of the carbondioxide in the product side of the equation 
b=h-a;//The coefficient of the carbonmonoxide in the product side of the equation 
z=b/(CO/100);//The sum of coefficients of the product side of the equation 
x=z-(b/2)+(e/2);//Mol of air supplied in kmol
wa=x*28.96;//Air supplied in kg/kg fuel
wf=1;//Assuming 1 kg of fuel supplied
T2=(t1+273)*(p2/p1)^((i-1)/i);//Temperature at the outlet of the compressor in K
T3=[[(wa*Cp*(T2-T0))+(wf*CV*1000)]/[(wa+wf)*(Cp1)]]+T0;//Maximum temperature of the cycle in K
T4=T3/[(4)^((i1-1)/i1)];//Temperature at point of the cycle in K
T5=[(Re/100)*(T4-T2)]+T2;//Temperature at point of the cycle in K
Wc=wa*Cp*(T2-(t1+273));//Work done by the compressor in kW
Wt=23.54*Cp1*(T3-T4);//Work done by the turbine in kW
Q1=23.54*Cp1*(T3-T5);//Total work done by the system in kW
nc=(Wt-Wc)/Q1;//Efficiency of the cycle 
nc1=nc*100;//Efficiency of the cycle in %
spc=3600/(Wt-Wc);//Specific fuel consumption in kg/kWh

//Output 
printf('(a) The maximum temperature of the cycle T3 = %3.0f K \n (b)Thermal efficiency of the plant = %3.3f or %3.2f percentage\n (c) Specific fuel consumption = %3.3f kg/kWh ',T3,nc,nc1,spc)
