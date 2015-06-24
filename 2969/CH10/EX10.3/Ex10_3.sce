clc
clear
//DATA GIVEN
T1=20+273;                      //temperature in K
p1=1;                           //pressure in bar
p2=10;                          //pressure in bar
Cv=0.718;                       //in kJ/kgK

//law of compression, pV^1.2=C
n=1.2; 
R=0.287;                        //in kJ/kgK

//(T2/T1)=(p2/p1)^((n-1)/n);
T2=T1*(p2/p1)^((n-1)/n);        //temp. T2 in K
m=1;
W=(n)/(n-1)*m*R*T1*[(p2/p1)^((n-1)/n)-1];       //work done per kg of air (kJ/kg of air)

//By the First Law of Thermodynamics
//heat transferred during compression, Q=W+DU
//Q=(p1V1-p2V2)/(n-1)+Cv(T2-T1)
//Q=(T2-T1)*[Cv-R/(n-1)]
Q=(T2-T1)*[Cv-R/(n-1)];

printf(' (i) The Temperature at the end of compression is: %3.0f K or %3.0f deg. celsius. \n',T2,(T2-273));
printf(' (ii) The Work done during compression per kg of air is: %3.2f kJ/kg of air. \n',W);
printf('      The Heat transferred during compression per kg of air is: %2.2f kJ/kg of air. \n',Q);
printf('      (Negative sign indicates heat REJECTION.) \n');
