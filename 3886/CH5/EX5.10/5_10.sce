//Value of force P
//refer fig. 5.14
mu=0.25
//Let fi be the angle of limiting friction
fi=atand(0.25)  //degree
 //Consider equilibrium of block C
//apply Lami's theorem
R1=160*sind(180-16-fi)/sind(2*(fi+16))  //kN
//Consider equilibrium of Wedge A
//apply Lami's theorem
P=R1*sind(180-fi-fi-16)/sind(90+fi)  //kN
printf("The required value is P=%0.3f kN",P)
