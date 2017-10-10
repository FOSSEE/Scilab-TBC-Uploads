clc
clear
//INPUT DATA
//CH2+(3/2) (O2+3.773 N2)= CO2+H2O+5.66N2 ;//STOICHIOMETRIC EQUATION
dU=-43.2;//Internal energy in MJ/kg

//CALCULATIONS
dH=dU+(7.66-7.16)*8.3143*10^-3*298/14;//ENTHALPY CHANGE
Hp=-((1*-393.52)+(-241.8))/(221.4);//enthalpy of products per kg of mixture
Hr=Hp-((-43.1*14)/(221.4));//Enthalpy of reactants per kg of mixture

//OUTPUT
printf('enthalpy of products per kg of mixture %3.2f MJ/kg \n enthalpy of reactants per kg of mixture %3.2f MJ/kg',Hp,Hr)



