clear;
clc;

// Example: 5.14
// Page: 168

printf("Example: 5.14 - Page: 168\n\n");

// Solution

//*****Data*****//
deltaS = 1;// [kJ/kg K]
Cv = 0.918;// [kJ/kg K]
T1 = 273 + 18;// [K]
//*************//

// Let the upper temperature be T.
// deltaS = integrate('Cv/T','T',T1,T); 
// deltaS = Cv*log(T/T1)
T = T1*exp(deltaS/Cv);// [K]
printf("The upper temperature of the process is %.3f K",T);