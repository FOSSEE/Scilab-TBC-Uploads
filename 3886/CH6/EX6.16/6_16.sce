//Differential screw jack
//pitch
pA=10  //mm
pB=5  //mm
//lever arm length
R=500  //mm
VR=(2*%pi*R)/(pA-pB)
P=185  //N
W=15000  //N
MA=W/P
eta=MA*100/VR  //percent
//let the law of machine be P=m*W+C
//from first case  185=m*15000+C
//from second case  585=m*50000+C
//solving we get
m=4/350
C=185-(m*15000)  //N
printf("Law of machine is P=%.4f*W+%0.2d ",m,C)


