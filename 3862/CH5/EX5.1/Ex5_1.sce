clear
//
Wa=1000.0 //weight of block a
Wb=2000.0  //weight of block b
uab=1.0/4.0   //coefficient of friction between A and B
ubg=1.0/3.0    //coefficient of friction between g and B

//When P is horizontal
//considering  equilibrium of block A
N1=Wa         //Normal Reaction on block A from block B
F1=uab*N1     //limiting Friction between A and B
T=F1         //tension
//considering  equilibrium of block B
N2=N1+ Wb         //Normal Reaction on block B from G

F2=ubg*N2     //limiting Friction between A and g

P=F1+F2
printf("\n P= %0.3f  N",P)
//When P is inclined at angle o
o=30.0*3.14/180.0
//considering  equilibrium of block A
N1=Wa         //Normal Reaction on block A from block B
F1=uab*N1     //limiting Friction between A and B
T=F1         //tension
//considering  equilibrium of block B
//from
//N2+Psin30=N1+Wb
//Pcos30=F1+F2
//F1=ubg*N2
N2=(N1+Wb-F1*tan(o))/(1+ubg*tan(o))
P=(N1+Wb-N2)/sin(o)
printf("\n P= %0.3f  N",P)
