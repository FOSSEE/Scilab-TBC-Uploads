//Lifting machine
VR=30
W=5000  //N
P=360  //N
MA=W/P
//efficiency
eta=MA*100/VR  //percent
printf("Since the efficiency eta=%0.2d percent is less than 50 percent,it is a self locking machine",eta)
//ideal load
Wi=P*VR  //N
//Frictional resistance
FR=Wi-W  //N
printf("\nIdeal load=%0.2d N\nFrictional resistance=%0.2d N",Wi,FR)
