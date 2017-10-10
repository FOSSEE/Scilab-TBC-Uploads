//ques-25.18
//Calculating volume occupied by oxygen using ideal gas equation and van der Waals equation
clc
n=3;//moles of oxygen
P=50;//pressure (in atm)
T=373;//temperature (in K)
a=1.36;//(in L^2 atm/mol^2)
b=0.0318;//(in L/mol)
//Ideal Gas equation
V1=(n*0.0821*T)/P;
//Van der Waals equation
V2=n*b+(n*0.0821*T)/(P+a*n^2/V^2);
printf("The volume occupied by oxygen calculated using ideal gas equation is %.2f L and using van der Waals equation is %.2f L.",V1,V2);
