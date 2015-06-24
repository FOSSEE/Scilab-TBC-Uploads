clc
//initialisation of variables
wt= 8 //lb/hphr
h1= 1399.2 //Btu/lb
h2s= 976 //Btu/lb
h2= 976 //Btu/lb
//CACLAULATIONS
Wt= 2545/wt
nt= Wt/(h1-h2s)
h21= h1-Wt
//RESULTS
printf ('Engine efficency = %.3f ',nt)
printf (' \n state  of the exhaust steam= %.3f Btu/lb',h21)
