clc
O2=0.19 //moles of O2
N2a=0.19*3.7619 //moles of N2
CO=0.26 //moles of CO in fuel
H2=0.12 //moles of H2 in fuel
CO2=0.07 //moles of CO2 in fuel
N2b=0.55 //moles of N2 in fuel
mprintf("Theoretical ari-fuel ratio=%f mole air/mole fuel\n",(O2+N2a)/(CO+H2+CO2+N2b))//ans vary due to roundoff error
CO2=0.33 //moles in product after combustion
H2O=0.12//moles in product after combustion
O2=0.038//moles in product after combustion
N2=1.408//moles in product after combustion
//product analysis
sigmaNi=CO2+H2O+O2+N2
a=CO2/sigmaNi //for CO2
b=H2O/sigmaNi //for H2O
c=O2/sigmaNi //for O2
d=N2/sigmaNi //for N2
mprintf("yi=.\n%f\n%f\n%f\n%f",a,b,c,d)//ans may vary due to roundoff error



