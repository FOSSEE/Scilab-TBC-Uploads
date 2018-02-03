//Finding the additional pulleys required
//if n is number of movable pulleys then
n=3
VR=2^n
eta=0.8
MA=eta*VR
P=6000/6.4  //N
//In second case
Effort=520  //N
//efficiency eta=0.80-n1*0.05
//n1=number of additional pulleys required=(n-3)
//thus
//W=P[0.8-(n-3)*0.05]*2^n
//by using trial and erroe method
nfinal=4
printf("Number of movable pulleys required=%.0f",nfinal)
