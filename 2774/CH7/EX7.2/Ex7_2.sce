clc
//solution
// initialization of variables

r=10 // compression ratio
k=1.4 // polytropic index for air
R=0.287 // specific gas constant for air
Cv=0.717 // specific heat at constant volume
Wnet=1000 // net work output in kJ/kg
T1=227+273 // low air temperaure in kelvin
p1=200 // low pressure in kPa

effi=1-(1/r^(k-1)) // thermal efficeiency 
printf("The maximum possible thermal efficiency is %0.1f %% \n",effi*100)

T2=T1*(r)^(k-1) // isentropic process temperature relation

T4=((Wnet/Cv)+T2-T1)/((r^(k-1))-1) // using expression for work

T3=T4*(r)^(k-1)

efficarnot=1-T1/T3
printf("The carnot efficiency is %0.1f %%",efficarnot*100)

v1=R*T1/p1 // initial volume 
v2=v1/r // from compression ratio

MEP=Wnet/(v1-v2) // mean effective pressure equation

printf("The MEP is %0.0f kPa",MEP)






