//Calculations on dual combustion cycle
clc,clear
//Given:
P1=1 //Pressure at 1 in bar
T1=90+273 //Temperature at 1 in K
r=13 //Compression ratio
Q1=1675 //Heat supplied per kg of air in kJ/kg
Q1_v=Q1/2,Q1_p=Q1/2 //Heat supplied at constant volume and pressure per kg of air in kJ/kg
g=1.4 //Specific heat ratio(gamma)
R='0.287' //Specific gas constant in kJ/kgK
cv='0.71+20D-5*T' //Specific heat at constant volume as a function of temperature(T) in kJ/kgK
//Solution:
//Refer fig 3.21
P2=P1*r^g //Pressure at 2 in bar
T2=T1*r^(g-1) //Temperature at 2 in K
//Since, heat transfer at constant volume, Q1_v = integration(cv*dt) from T2 to T3
//Thus, Q1_v is the function of T3. Defining the function Q1_v of T3
function [Q1_vtoQ1]=Volume(T3)
    Q1_v=integrate(cv,'T',T2,T3)
    Q1_vtoQ1=Q1_v-Q1/2
endfunction
//Since, heat transfer at constant volume must be equal to half of total heat added
//Thus, their difference must be zero, function Q1_vtoQ1 is solve for zero
T3=fsolve(1,Volume) //Temperature at 3 in K
P3=P2*T3/T2 //Pressure at 3 in bar
cp=addf(cv,R) //Specific heat at constant pressure as a function of temperature(T) in kJ/kgK
//Since, heat transfer at constant pressure, Q1_p = integration(cp*dt) from T3 to T4
//Thus, Q1_p is the function of T4. Defining the function Q1_p of T4
function [Q1_ptoQ1]=Pressure(T4)
    Q1_p=integrate(cp,'T',T3,T4)
    Q1_ptoQ1=Q1_p-Q1/2
endfunction
//Since, heat transfer at constant pressure must be equal to half of total heat added
//Thus, their difference must be zero, function Q1_ptoQ1 is solve for zero
T4=fsolve(1,Pressure) //Temperature at 4 in K
rho=T4/T3 //Cut off ratio
p=(rho-1)*100/(r-1) //Percentage of stroke at which cut off occurs
//Results:
printf("\n The maximum pressure in the cycle, P3 = %.1f bar",P3)
printf("\n The percentage of stroke at which cut off occurs = %.2f percent\n\n",p)
