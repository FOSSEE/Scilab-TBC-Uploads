//Least and the greatest value of W for equilibrium
//refer fig.
//case (a) for least value
refer fig.  (b)
//considering equilibrium of 1000 N block
N1=1000*cosd(30)  //N
//law of friction gives
F1=0.28*N1  //N
T=500-242.49  //N
//consider equilibrium of W
//F2=0.1W
Wmin=257.51/(0.1+sind(60))  //N
//case (b) for greatest value
//refer fig. 5.11 (c)
//consider equilibrium of 1000N block
T=1000*sind(30)+242.49  //N
//consider equilibrium of W
//F2=0.2*0.5*W
Wmax=742.49/(0.1+sind(60))  //N
printf("\nThe greatest and least values of W are:-\nWmax=%0.2d N\nWmin=%0.2d N",Wmax,Wmin)

