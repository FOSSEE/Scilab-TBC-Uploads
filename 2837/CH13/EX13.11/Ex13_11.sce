clc
clear
//Initialization of variables
c=0.74
ref=0.02
co2=0.12
co=0.1/100
M=12
//calcualtions
carbon=c-ref
car2=co2+co
wt=car2*M
amount=carbon/wt
//results
printf("Moles of dry products per pound of coal = %.3f mole",amount)
