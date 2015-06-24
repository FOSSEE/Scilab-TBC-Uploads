clc
//initialisation of variables
Nd= 6
H1= 5.6 //m
H2= 2.2 //m
k= 5e-5 //cm/sec
dL= 4.1 //m
//calculations
H= (H1-H2)/Nd
h1= 5.61-H
h2= 5.61-5*H
q= 2.38*(H1-H2)*k/Nd
i= H/dL
//results
printf ('at point a,water will rise to height of = % 3f m ',h1)
printf ('at point b,water will rise to height of = % 3f m ',h2)
printf ('total rate of seepage per unit lenghth = %e m^3/sec/m ',q)
printf ('average hydraulic gradient at c = % 3f ',i)
