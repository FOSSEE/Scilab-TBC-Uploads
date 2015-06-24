clc
//Initialization of variables
c=0.5 //M
c1=0.000025 //M
D2=0.280
D1=0.417
//calculations
c2=D2*c1/(D1)
dC=c1-c2
SCN=c- 6*c2 -4*dC
K=dC*SCN^2 /c2
//results
printf("Kc for dissociation = %.2f M^2",K)
