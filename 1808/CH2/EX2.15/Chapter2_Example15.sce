clc
clear
//INPUT DATA
//CH4 + 2O2 + 7.52N2=CO2 + 2H2O + 7.52N2 ;//Combustion equation with liquid water in the products
t1=278;//atmospheric temperature
t2=1000;//products temperature
p1=1;//atmospheric pressure
hfco2=-393520;//Acc.to tables with liquid water in the products enthalpy of CO2
hfh2o=-285830;//Acc.to tables with liquid water in the products enthalpy of H2O
hfch4=-74850;//Acc.to tables with liquid water in the products enthalpy of CH4

hfco21=-393520;///Acc.to tables with water vapour in the products enthalpy of CO2
hfh2o1=-241820;//Acc.to tables with water vapour in the products enthalpy of H2O
hfch41=-74850;//Acc.to tables with water vapour in the products enthalpy of CH4

h21co2=33368;//Acc.to tables at 1000 K ,1 atm with water vapour in the products enthalpy of CO2
h21h2o=25978;//Acc.to tables at 1000 K ,1 atm with water vapour in the products enthalpy of H2O
h21n2=21468;//Acc.to tables at 1000 K ,1 atm with water vapour in the products enthalpy of N2

//CALCULATIONS
hrp=1*hfco2+2*hfh2o-hfch4;//enthalpy of reactants and products in kJ/kmol
hrpCH4=hrp/16.04;//Enthalpy of combustion of gaseous methane with liquid water in the products in kJ/kg

hrp1=1*hfco21+2*hfh2o1-hfch41;//enthalpy of reactants and products in kJ/kmol
hrpCH41=hrp1/16.04;//Enthalpy of combustion of gaseous methane with water vapour in the products in kJ/kg

hrp2=1*(hfco21)+(h21co2)+2*(h21h2o)+2*(hfh2o)+7.52*(h21n2)-1*(hfch4);//enthalpy of reactants and products in kJ/kmol
hrpCH42=hrp2/16.04;//Enthalpy of combustion of gaseous methane at 1000 K ,1atm with water vapour in the products in kJ/kg

dhco2=(42769-9364);//From tables both reactants and products enthalpy
dhh2o=(35882-9904);//From tables both reactants and products enthalpy
dho2=(31389-8682);//From tables both reactants and products enthalpy
dhch4=38189;//From tables both reactants and products enthalpy

hrp3=1*(hfco2+dhco2)+2*(hfh2o1+h21h2o)-(hfch41+dhch4)-2*(dho2);//enthalpy of reactants and products in kJ/kmol
hrpCH43=hrp3/16.04;//Enthalpy of combustion of gaseous methane at 1000 K ,1atm with water vapour and liqid water in the products in kJ/kg

//OUTPUT
printf('(i)Enthalpy of combustion of gaseous methane with liquid water in the \n products %3.2f kJ/kg of fuel\n(ii)Enthalpy of combustion of gaseous methane with water  \n vapour in the products %3.2f kJ/kg of fuel\n ',hrpCH4,hrpCH41)
printf('(iii)Enthalpy of combustion of gaseous methane at 1000 K ,1atm  \n with water vapour in the products is %3.3f kJ/kg of fuel\n(iv)Enthalpy of combustion of gaseous methane at 1000 K ,1atm \n with water vapour and liqid water is  the products is %3.2f kJ/kg of fuel',hrpCH42,hrpCH43)



