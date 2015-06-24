//ques9
//Entropy Change of an Ideal Gas
clear
clc
//(a) From table (Table A–17)
s2=1.79783;//entropy of substance a state 2 in kJ/Kg.K  
s1=1.66802;//entropy of state 2 in kJ/kg.k
R=0.287;//gas constant for water
P2=600//final pressure in kPa
P1=100//initial pressure in kPa
dS=s2-s1-R*log(P2/P1);//change in entropy in kJ/kg.k
printf('(a) s2-s1 = %.4f kJ/Kg.K \n',dS);

//(b) by using a c value at the average temperature 37 C 
Cpavg=1.006//avg specific heat at const pressure in kJ/kg.K
T2=330//final temp in K
T1=290//inial temp in K
dS=Cpavg*log(T2/T1)-R*log(P2/P1);//kJ/kg.k
printf(' (b) Entropy change = %.4f kJ/kg.K',dS);

