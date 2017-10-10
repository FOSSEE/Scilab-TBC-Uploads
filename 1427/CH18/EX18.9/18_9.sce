//ques-18.9
//Comparing theoretical efficiencies of system of engine operating at 1 and 50 atm
clc
T1=45;//temperature (in degree celsius)
//Part (i)
T2=100;//boiling temperature (in degree celsius)
n1=(T2-T1)/(T2+273);//efficiency
//Part (ii)
T2=265;//boiling temperature (in degree celsius)
n2=(T2-T1)/(T2+273);//efficiency
printf("The two theoretical efficiencies required are %.4f and %.4f.",n1,n2);
