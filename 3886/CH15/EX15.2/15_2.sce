//Elevator cage
//refer fig. 15.4
u=0
v=25  //m/sec
s=187.5  //m
//using equations of motion
a=(25^2)/(2*187.5)  //m/sec^2
//summing up the forces in vertical direction
T=8600-((8600*1.667)/(9.81)) //N
//Equilibrium condition gives
R=600-((600*1.667)/(9.81)) //N
printf("\nT=%.2f N\nR=%.2f N",T,R)

