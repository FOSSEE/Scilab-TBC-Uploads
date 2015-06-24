//ques7
//Evaluation of the du of an Ideal Gas
clear
clc
//(a) One way of determining the change in internal energy of air is to read the values at T1 and T2 from Table A–17 and take the difference
u1=214.07;//internal energy in kJ @ 300K
u2=434.78;//Internal energy in kJ @ 600K
du=u2-u1;//Change in in internal energy in kJ
printf('(a) Change in Internal Energy(from air data table ) = %.2f kJ \n',du);
  
//(b) the functional form of the specific heat (Table A–2c)
//constant
a=28.11;
b=0.1967*10^-2;
c=0.4802*10^-5;
d=-1.966*10^-9;
Ru=8.314;//Universal gas constant
//Cp=a+b*T+c*T^2+d*T^3;
//Cv=Cp-Ru
T1=300;//Initial Temp in K
T2=600;//Final  temp in K
U=integrate('a-Ru+b*T+c*T^2+d*T^3','T',T1,T2);
M=28.97;//molicular mass
u=U/M;//specific internal energy in KJ/Kg
printf(' (b) Change in Internal Energy using functional form of the specific heat =  %.2f kJ\n',u);

//(c)the average specific heat value (Table A–2b)
Tavg=(T1+T2)/2;//avg temp in K
Cv=0.733;//heat capacity at constant volume in kJ/K @Tavg from Table-2A
u=Cv*(T2-T1);//average change in internal energy in kJ/kg
printf(' (c) Change in Internal Energy using avg specific heat value = %.2f kJ/kg ',u);