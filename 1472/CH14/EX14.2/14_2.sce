clc
//initialization of varaibles
h1=1399.2 //B/lb
h2s=976 //B/lb
wt=8 //lb /hp hr
//calculations
Wt=2545/wt
etaT=Wt/(h1-h2s)
h2=h1-Wt
//results
printf("Engine efficiency = %.3f",etaT)
