//Calculations on diesel engine
clc,clear
//Given:
n=6 //Number of cylinders
bp=110 //Brake power in kW
N=1600 //Engine speed in rpm
CV=43100 //Calorific value in kJ/kg
pC=86.2/100,pH2=13.5/100,pNC=0.3/100 //Composition of Carbon, Hydrogen and non combustibles in fuel
eta_v=78 //Volumetric efficiency in percent
eta_it=38 //Indicated thermal efficiency in percent
eta_m=80 //Mechanical efficiency in percent
MS=110 //Mixture strength in percent
l_d=1.5 //Stroke bore ratio (l/d)
v_a=0.772 //Specific volume of air in m^3/kg
p_m=23.1/100,p_v=20.8/100 //Composition of Oxygen in air by mass and volume
//Solution:
C=12 //Atomic mass of Carbon(C)
H=1 //Atomic mass of Hydrogen(H)
O=16 //Atomic mass of Oxygen(O)
N2=14 //Atomic mass of Nitrogen(N)
A_F_s=(pC*2*O/C+pH2*O/(2*H))/p_m //Stoichiometric air fuel ratio
A_F_act=(1+MS/100)*A_F_s //Actual air fuel ratio
Ma=(p_m*2*O)+((1-p_m)*2*N2) //Molecular mass of air per mole air in kg/mole
//Stoichiometric equation of combustion of fuel (petrol)
//   0.862/12[C] + 0.135/2[H2] + [p_v[O2] + (1-p_v)[N2]]*x = a[CO2] + b[H2O] + c[O2] + d[N2]
//Equating coefficients
a=pC/C,b=pH2/(2*H) //On balancing C and H
x=A_F_act/Ma //Moles of air
c=p_v*x-a-b/2 //On balancing O
d=(1-p_v)*x //On balancing N
pCO2=a/(a+c+d),pO2=c/(a+c+d),pN2=d/(a+c+d) //Composition of Carbon di oxide, Oxygen, Nitrogen in dry exhaust
ip=bp/eta_m*100 //Indicated power in kW
m_f=ip/(eta_it/100*CV)*60 //Mass of fuel in kg/min
m_a=m_f*A_F_act //Mass of air in kg/min
V_a=m_a*v_a //Volume of air in m^3/min
V_s=V_a/eta_v*100 //Swept volume in m^3/min
V_s=V_s/(n*N/2) //Swept volume in m^3
function y=f(d) //Defining a function, f of unknown bore, d
    l=l_d*d //Stroke in terms of bore
    y=%pi/4*d^2*l-V_s
endfunction
d=fsolve(1,f) //Function f solve for zero, bore in m
l=l_d*d //Stroke in m
//Results:
printf("\n The volumetric composition of dry exhaust gas,\n\tCO2 = %.2f percent\n\tO2 = %.2f percent\n\tN2 = %.2f percent",pCO2*100,pO2*100,pN2*100)
printf("\n The bore of the engine, d = %.2f cm\n The stroke of the engine, l = %.2f cm\n\n",d*100,l*100)
