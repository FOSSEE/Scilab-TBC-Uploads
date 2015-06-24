clc
clear
//Input data
rc=15//Compression ratio
p1=1//Pressure at which compression begins in bar
T1=27+273//Temperature in K
pm=60//Maximum pressure in bar
h=2//Heat transfered to air at constant volume is twice that at constant pressure
g=1.4;//Isentropic index
Cv=0.718;//specific heat at constant volume for air in kJ/kgK
Cp=1.005;//specific heat at constant pressure for air in kJ/kgK
R=0.287;//Real gas constant in kJ/kgK

//Calculations
T2=(T1*rc^(g-1))//Temperature in K
p2=(p1*rc^g)//Pressure in bar
T3=(T2*(pm/p2))//Temperature in K
T4=(Cv*(T3-T2))/(2*Cp)+T3//Temperature in K
b=(T4/T3)//Cut-off ratio
T5=(T4*(b/rc)^(g-1))//Temperature in K
p5=(p1*(T5/T1))//Pressure in bar
Q1=(Cv*(T3-T2))+(Cp*(T4-T3))//Heat supplied per unit mass in kJ/kg
Q2=Cv*(T5-T1)//Heat rejected per unit mass in kJ/kg
W=(Q1-Q2)//Workdone in kJ/kg
n=(W/Q1)*100//Air standard efficiency
Vs=((1*R*1000*T1)/(p1*10^5))*(1-1/rc)//Swept volume in m^3/kg
pmean=((W*1000)/Vs)/10^5//Mean-effective pressure in bar

//Output
printf('(a) The pressures and temperatures at the cardinal points of the cycle are \n T2 = %3.0f K  p2 = %3.1f bar \n T3 = %3.0f K  p3 = %3.0f bar \n T4 = %3.0f K  p4 = %3.0f bar \n T5 = %3.0f K  p5 = %3.2f bar \n (b) The cycle efficiency is %3.0f percent \n (c) The mean effective pressure of the cycle is %3.2f bar',T2,p2,T3,pm,T4,pm,T5,p5,n,pmean)
