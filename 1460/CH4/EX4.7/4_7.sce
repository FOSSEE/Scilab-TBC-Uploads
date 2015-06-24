clc
//Initialization of variables
w1=100 //lbm
w2=2 //lbm
h1=127 //B/lbm
h2=125 //B/lbm
hc=401 //B/lbm
//calculations
ht1=w1*h1
ht2=w2*h2
ht3=(w1+w2)*hc
Q=ht3-ht1-ht2
//results
printf("Heat liberated = %d B/sec",Q)
