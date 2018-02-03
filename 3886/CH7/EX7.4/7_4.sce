//range of weight
//refer fig. 7.5
//angle of contact
theta=1.25*2*%pi
//case 1-Let impending motion of the weight be downward
//T1=600  //N
//T2=W
//from law of rope friction
//T2=T1*%e^mu*theta
aW=600*(%e^(0.3*2.5*%pi))  //N
//case-2 impending motion of W be upward
//T1=W
//T2=600 N
//from law of rope friction
bW=600/(%e^(0.75*%pi))  //N
printf("The range of weight that can be supported is from %.2f N to %.2f N",aW,bW)

