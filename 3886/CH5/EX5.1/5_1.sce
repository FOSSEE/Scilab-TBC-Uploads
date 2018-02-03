//Value of P
//Refer fig. 5.5 (a),(b)&(c)
//(a) when P is Horizontal Phor
//Consider equilibrium
//block A
N1=1000  //N
F1=0.25*N1  //N
T=F1  //N 
//Block B
N2=N1+2000  //N
F2=3000/3  //mu*N2  N
Phor=F1+F2  //N
//(b) when P is inclined  (Pinc)
//Considering equilibrium of block B
//Using law of friction
//Pinc*cosd(30)-F1-F2=0
Pinc=1250/(cosd(30)+(0.5/3))  //N
printf("\nPhor=%0.2d N\nPinc=%0.2d N",Phor,Pinc)
 
