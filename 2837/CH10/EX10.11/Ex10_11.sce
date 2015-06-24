clc
clear
//Initialization of variables
disp("From table 1 of keenan and keynes,")
h1=1351.1 //Btu/lb
p1=600 //psia
t1=700 //F
p2=234 //psia
h2=1.6865
h1=1.5875
t3=101.74
//calculations
t2=660 //F
loss= (h2-h1)*(t3+459.69)
//results
printf("Final state of steam is %d psia and %d F",p2,t2)
printf("\n Loss of available energy = %.1f Btu/lb",loss)
