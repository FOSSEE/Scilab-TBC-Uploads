//Calculations on diesel engine
clc,clear
//Given:
A_F=28/1 //Air-fuel ratio
CV=42000 //Calorific value in kJ/kg
cv='0.71+20D-5*T' //Specific heat at constant volume as a function of temperature(T) in kJ/kgK
R='0.287' //Specific gas constant in kJ/kgK
r=14/1 //Compression ratio
T2=800 //Temperature at the end of the compression process (2) in K
//Solution:
//Refer fig 3.20
//Assume cycle consumes 1 kg of fuel
m_c=A_F*1+1 //Mass of charge in kg
cp=addf(cv,R) //Specific heat at constant pressure as a function of temperature(T) in kJ/kgK
//Since, heat transfer at constant pressure, Q1 = integration(cp*dt) from T2 to T3
//Thus, Q1 is the function of T3. Defining the function Q1 of T3
function [Q1toCV]=difference(T3)
    Q1=integrate(cp,'T',T2,T3)
    Q1toCV=Q1-CV/m_c
endfunction
//Since, heat transfer at constant pressure must be equal to calorific value per kg of charge
//Thus, their difference must be zero, function Q1toCV is solve for zero
T3=fsolve(1,difference)
T3=round(T3) //Temperature at the end of constant pressure proces (3) in K
rho=T3/T2 //Cut off ratio
V2=1 //Assume clearance volume in unit
V3=rho //Volume at 3 in units
p=(V3-V2)*100/(r-V2) //percentage of stroke at which constant pressure process ends
//Results:
printf("\n At %.2f percentage of stroke combustion is completed.\n\n",p)
