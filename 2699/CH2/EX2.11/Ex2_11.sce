//EX2_11 PG-2.38
clc
If=30e-3;//forward current
T1=25+273;//temperature in degree kelvin
disp("Therefore at a temperature of 25 Degree C ")
Rf=26e-3/If;
printf("\n dynamic resistance is %.3f ohm \n",Rf)
disp("Therefore at a temperature of 75 Degree C ")
T2=75+273//Temperature in degree kelvin
Rf=Rf*(T2/T1);
printf("\n dynamic resistance is %.3f ohm",Rf)
