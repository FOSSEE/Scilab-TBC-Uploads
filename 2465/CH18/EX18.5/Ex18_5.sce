//Chapter-18,Example 5,Page 406
clc();
close();


H2 =0.24   //composition of H2

CH4 =0.3   //composition of CH4

CO =0.06   //composition of CO

C2H6 =0.11   //composition of C2H6

C2H4 =0.045   //composition of C2H4

C4H8 =0.025   //composition of C4H8

N2=0.12   //composition of N2

CO2=0.08  //composition of CO2

O2=0.02   //composition of O2

//for reaction H2 + (1/2)O2 = H2O

V1=H2*(1/2)   //volume of O2 required

//for reaction CH4 + 2O2  = CO2 + 2H2O

V2=CH4*2   //volume of O2 required
vCO2_1=CH4*1   //volume of CO2

//for reaction C2H6 + (7/2)O2 = 2CO2 +3H2O

V3=C2H6*(7/2)   //volume of O2 required
vCO2_2=C2H6*2   //volume of CO2

//for reaction C2H4 + 3O2 = 2CO2 +2H2O

V4=C2H4*3   //volume of O2 required
vCO2_3=C2H4*2   //volume of CO2

//for reaction C4H8 + 6O2 = 4CO2 +4H2O

V5=C4H8*6   //volume of O2 required
vCO2_4=C4H8*4   //volume of CO2

//for reaction CO + (1/2)O2  = CO2

V6=CO*(1/2)   //volume of O2 required
vCO2_5=CO*1   //volume of CO2

total_O2= V1+V2+V3+V4+V5+V6-O2  //total volume of oxygen

//as air contains 21% of O2 by volume
//when 40% excess

V_air = total_O2*(100/21)*(140/100)   //volume of air 

printf("the air to fuel ratio is %.3f",V_air)

total_CO2 = vCO2_1+vCO2_2+vCO2_3+vCO2_4+vCO2_5+CO2  //total volume of CO2

total_dry= total_CO2 +[N2+(79*V_air/100)]+[(V_air*21/100)-total_O2]

printf("\n the total volume of dry products is %.4f cubicmeter ",total_dry)

CO2_dry =total_CO2*100/total_dry

N2_dry =[N2+(79*V_air/100)]*100/total_dry

O2_dry =[(V_air*21/100)-total_O2]*100/total_dry

printf("\n  Composition of products of combustion on dry basis")

printf("\n  CO2 = %.3f",CO2_dry)

printf("\n  N2 = %.3f",N2_dry)

printf("\n  O2 = %.3f",O2_dry)

//calculation mistake in textbook




