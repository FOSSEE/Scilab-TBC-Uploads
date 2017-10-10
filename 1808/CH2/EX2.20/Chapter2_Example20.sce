clc
clear
//INPUT DATA
mf=0.4;//flue flow rate in g/s
ma=5.6;//air flow rate in g/s
hbc=1.8;//gasoline with H/C ratio
//a CH1.87+b O2+c N2=13 CO2 +2.8 CO +0.933 H2+ d H2O+ 83.267 N2 ;//EXHAUST GAS COMPOSITION
c=83.267;//Composition of N2
b=22.069;//Composition of O2
a=15.8;//Composition of CH1.87
d=13.84;//Composition of H2O

//CALCULATIONS
xa=mf/ma;//air fuel ratio
//CH1.87+1.4675(O2+3.773N2)=CO2+0.935 H2O+ 5.536 N2 ;//CHEMICAL COMPOSITION
xs=(12*1+1*hbc)/(202+86);//air fuel ratio
x=(xa/xs);//Equivlent ratio from the fuel and air flow rate

//15.8 CH1.87+22.069 O2+83.267 N2=13 CO2 +2.8 CO +0.937 H2+ 13.84 H2O+ 83.267 N2 ;//EXHAUST GAS COMPOSITION
//CH1.87+1.397 O2+5.27 N2=0.823 CO2 +0.177 CO +0.059 H2+ 0.876 H2O+ 5.27 N2 ;//CALCULATED EXHAUST GAS COMPOSITION
xa1=(d)/(1.397*32+5.27*28);//air fuel ratio
x1=xa1/xs;//Equivalent ratio of calculated exhaust gas composition

//OUTPUT
printf('(i)The Equivlent ratio from the fuel and air flow rate is %3.3f \n (ii)TheEquivalent ratio of calculated exhaust gas composition is %3.3f',x,x1)






