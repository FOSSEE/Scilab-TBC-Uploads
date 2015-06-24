clc
clear
//Initialization of variables
p1=2.181
p2=2.637
p3=3.163
vg1=0.09150
vg2=0.07585
vg3=0.06323
vl1=0.00118
vl2=0.00120
vl3=0.00122
M=18
t1=490 //K
t2=500 //K
t3=510 //K
R=8.3143
//calculations
lam1= (p2-p1)*10^3 *M*(vg2-vl2) *2.154/ log(t3/t1)
lam2 = log(p3/p1) *R/(1/t1 -1/t3)
err=(lam2-lam1)/lam1
//results
printf("latent heat using calyperon equation = %d kJ/kmol",lam1)
printf("\n latent heat using the clasius calyperon equation = %d kJ/kmol",lam2)
printf("\n Error = %d percent",err*100)
