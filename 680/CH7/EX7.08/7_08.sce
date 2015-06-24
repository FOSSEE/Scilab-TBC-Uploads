//Problem 7.08:

//initializing the variables:
x = 0.5;
T1 = 10; // in deg F
T2 = 60; // in deg F

//calculation:
//qout = 0.5*qin
//Tout = Tup - 60
//Tmix = Tup - 10
//qbyp = qup - qin
//qmix = qup - 0.5*qin
//(qup - qin)*Cp*p*(Tup - Tref) + 0.5*qin*Cp*p*(Tup + 60 - Tref) = (qup - 0.5*qin)*Cp*p*(Tup - Tref + 60)
//Tref = 0
//soving above we get r = qin/qup
r = 10/35

printf("\n\nResult\n\n")
printf("\n %.1f percent of the river flow, qup, is available for cooling",r*100)