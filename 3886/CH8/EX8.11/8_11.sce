//Range of force P
//refer fig. 8.15
//a-when the motion is impending up the plane
mu=0.3
N=1000*cosd(70)
F=mu*N  //N
//Applying virtual work principle
aP=1000*sind(70)+300*cosd(70)  //N
//b-when the motion is impending down the plane
//Applying virtual work principle
bP=1000*sind(70)-300*cosd(70)  //N
printf("Block is in equilibrium for P=%.2f N to %.2f N",bP,aP)

