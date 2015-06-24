clc
clear
//Input data
T1=15+273//Inlet temperature of air in K
rp=4//Pressure ratio
T4=560+273//Maximum temperature of the cycle in K
nc=83//Isentropic efficiency of the compressor in percent
nt=86//Isentropic efficiency of the turbine in percent
x=75//Heat exchanger making use of heat available in percent
g=1.4//Ratio of specific heats

//Calculations
T5i=(T4*(1/rp)^((g-1)/g))//Temperature in K
dt=(T4-T5i)//Isometric temperature drop through turbine in degree C
ta=((nt/100)*dt)//Actual temperature drop in degree C
T5=(T4-ta)//Temperature in K
T2i=(T1*rp^((g-1)/g))//Temperature in K
tc=(T2i-T1)//Temperature change in degree C
T2=(tc/(nc/100))+T1//Temperature in K
q=(T5-T2)//Available heat in exchanger in kcal per kg *Cp
T3=((q*(x/100))+T2)//Temperature in K
//Without heat exchanger
qw=(T4-T2)//Heat supplied *Cp in kcal/kg
tw=(T4-T5)//Turbine work *Cp in kcal/kg
cw=(T2-T1)//Compressor work *Cp in kcal/kg
nw=(tw-cw)//Net workdone *Cp in kcal/kg
no=(nw/qw)*100//Overall efficiency in percent
//With heat exchanger
qs=(T4-T3)//Heat supplied *Cp in kcal/kg
no1=(nw/qs)*100//Overall efficiency in percent

//Output
printf('The overall efficiency \n (a) without heat exchanger is %3.1f percent \n (b) with heat exchanger making use of %i percent of heat available is %3.1f percent',no,x,no1)
