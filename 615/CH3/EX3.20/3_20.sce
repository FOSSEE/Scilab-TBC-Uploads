//chemical kinetics and catalysis//
//example 3.20//
R=8.314;//value of constant R in J/K.mol//
H=1.25*10^4;//value of E/(2.303*R).It is given in the question//
E=H*2.303*R;
printf("activation energy is %fJ/mol or %fKJ/mol",E,E/1000);
la=14.34;//value of log(a)//
T=670;//temperature in kelvin//
lk=la-(H/T);
k=10^lk;
printf("\nRate constant at 670K is %f/s",k);