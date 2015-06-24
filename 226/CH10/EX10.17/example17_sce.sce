//chapter 10
//example 10.17
//page 424
printf("\n")
printf("given")
Vdd=50;Rd=10;R2=1*10^6;rDS=.25;
Id=Vdd/Rd
disp(" from transfer curve at Id=5 and Vgs=5.7")
Vgs=5.7;
R1=((Vdd-Vgs)*R2)/Vgs//use 6.8Mohm to make Vgs>5.7V to ensure that the FET is biased on
Vds=Id*rDS