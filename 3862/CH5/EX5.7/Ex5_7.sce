clear
//
u=0.4     //The coefficient of friction on the horizontal plane
oi=30     //angle of inclined plane
o=20.0  //The limiting angle of  friction for block B on the inclined plane
wb=5000.0   //weight of block b
ub=tan(o*3.14/180.0)            //coefficcient of friction on plane
//for block B
//N1 N2 N3 are normal reaction
//F1 F2  are frictional forces
//F1=ub*N1   
//N1 sinoi + F1 cos oi=wb
N1=wb/(sin(oi*3.14/180.0)+ub*cos(oi*3.14/180.0))
F1=ub*N1
C=N1*cos(oi*3.14/180.0)-F1*sin(oi*3.14/180.0)

//force balance on A in horizontal balance
F2=C
N2=F2/u
//force balance on A in vertical balance
W=N2
printf("\n Weight  %0.3f  N",W)
