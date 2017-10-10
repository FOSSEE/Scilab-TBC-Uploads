//ques-22.9
//Finding density of NaCl
clc
a=0.564*10^(-7);//edge length (in cm)
V=a^3;//volume
M=58.5;//molar mass of NaCl (in g/mol)
den=(4*M)/(6.023*V*10^23);//density
printf("The density of NaCl is %.3f g/mL.",den); 
