////Variable Declaration
Th = 500.
Tc = 200.     //Temeperatures IN Which reversible heat engine works, K
q = 1000.              //Heat absorbed by heat engine, J

//Calcualtions
eps = 1.-Tc/Th
w = eps*q

//Results
printf("\n Efficiency of heat engine is %4.3f",eps)

printf("\n Work done by heat engine is %4.1f J",w)

