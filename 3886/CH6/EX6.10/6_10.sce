//Force P required to raise the load
eta=0.70
W=2500  //N
//refer fig. 6.17
//For third order  pulley
//VR=2^2-1
//For whole system
VR=3+3
P=W/(eta*VR)  //N
printf("Required force p=%.2f N",P)
