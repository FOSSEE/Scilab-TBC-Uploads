clc
clear
//INPUT DATA
//C4H10+6.5(O2+3.773N2) = 4CO2+5H2O+24.5245N2 ;//Chemicl equation
x=0.9;//equivalent ratio

//CALCULATIONS
xs=(12*4+1*10)/(31.0245*28.962);//air fuel ratio 
xa=x*xs;//exhaust gas composition

//OUTPUT
printf('Exhaust gas compositin is %3.4f \n',xa)
printf('C4H10+1.11*6.5( O2+3.773 N2) = 4 CO2+5 H2O+0.7150 O2+27.22 N2' )



