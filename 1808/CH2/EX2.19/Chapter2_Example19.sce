clc
clear
//INPUT DATA
//CH4 + 2 O2 = CO2+2 H2O ;//Chemical equation
hfco2=-393.52;//enthalpy of CO2 in MJ/kmol of CH4
hfh2o=-241.83;//enthalpy of H2O in MJ/kmol of CH4
hfch4=-77.87;//enthalpy of CH4 in MJ/kmol of CH4
hfo2=0;//enthalpy of O2 in MJ/kmol of CH4

//CALCULATIONS

Qp=hfco2+2*hfh2o-(hfch4+2*hfo2);//Lower heating value in MJ/kmol
Qp1=-Qp/(21*1-1*4);//Lower heating value in MJ/kg
dU=Qp1;//lower heating values

//OUTPUT
printf('np=nr \n')
printf('Lower heating values are \n Qp %3.1f MJ/kg of CH4 \n du  %3.1f MJ/kg of CH4 \n Qp1=dU \n ',Qp1,dU)







