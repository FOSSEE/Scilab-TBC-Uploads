//example-6.2
//page no-171
//given
//gas constant
R=8.314  //J/mol K
//temperatures
T1=27+273  //K
T2=52+273  //K
//we know that
//n=NA*exp(-Hf/R/T)
//so for n1=NA*exp(-Hf/R/T1)
//similarly for n2=NA*exp(-Hf/R/T2)
//dividing n2 by n1
//we have given in ques that dfects triple on incresing the temp from T1 to T2
//so n2/n1=3
//we get 3=exp(Hf/R*(1/T1-1/T2))
//on solving we get
Hf=log(3)*R*(T1*T2/(T2-T1))/1000   //KJ/mol
printf ("enthalpy of formation of vacancies is %f KJ/mol",Hf)
