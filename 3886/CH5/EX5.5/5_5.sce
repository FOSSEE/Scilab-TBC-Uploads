//Smallest weight W
//Refer fig. 5.9
mu=0.4
//consider equilibrium of block B
//using law of friction
N1=5/((0.5)+(tand(20))*(sind(20)))  //kN
F1=N1*tand(20)
C=N1*cosd(30)-F1*cosd(60)  //kN
//Consider the equilibrium of block A
F2=C  //kN
//Law of friction
N2=4.196/0.4  //kN
W=N2  //kN
printf("\nW=%0.2f kN",W)



