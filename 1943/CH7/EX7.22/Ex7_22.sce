
clc
clear
//Input data
p=150//Pressure in bar
T=600//Temperature in degree C
Vb=300//Velocity in m/s
nn=95//Nozzle efficiency in percent
a=15//Nozzle angle in degrees
a1=25//Angle in degrees

//Calculations
h1=3582.3//Enthalpy in kJ/Kg
s1=6.6776//Entropy in kJ/kg.K
s2=s1//Entropy in kJ/kg.K
x2s=(s2-0.6493)/7.5009//Dryness fraction
h2s=(191.83+x2s*2392.8)//Enthalpy in kJ/kg
h12s=(h1-h2s)//Difference in enthalpy in kJ/kg
V1=(Vb*2)/cosd(a)//Velocity in m/s
dhs=(V1/44.72)^2/(nn/100)//Change in enthalpy in kJ/kg
n1=ceil(h12s/dhs)//Number of stages
V2=(Vb/cosd(a1))//Velocity in m/s
dhs2=(V2/44.72)^2/(nn/(2*100))//Change in enthalpy in kJ/kg
n2=h12s/dhs2//Number of stages
V3=(Vb*4)/cosd(a)//Velocity in m/s
dhs3=(V3/44.72)^2/(nn/100)//Change in enthalpy in kJ/kg
dhhs3=(h12s-dhs3)//Change in enthalpy in kJ/kg
n3=dhhs3/dhs//Number of stages
n4=dhhs3/dhs2//Number of stages

//Output
printf('Number of stages required in \n (a) all simple impulse stages are %3.0f \n (b) all 50 percent reaction stages are %3.0f \n (c) a 2-row Cutris stage follwed by simple impulse stages are %3.0f \n (d) a 2-row Cutris stage followed by 50 percent reaction stages are %3.0f',n1,n2,n3,n4)
