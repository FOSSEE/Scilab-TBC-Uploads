clear
//
Wa=300.0 //weight of upper block 
Wb=900.0  //weight of lower block 
u1=1.0/3.0   //coefficient of friction between upper block and lower block
u2=1.0/3.0    //coefficient of friction between g and  lower block

//using 
//N1=Wacoso          Normal Reaction
//F1=u1*N1           Friction
//N2=Wbcoso+N1
//F2=u2*N2
o=atan((u1*Wa+u2*Wb+u2*Wa)/Wb)*180/3.14
printf("\n %0.3f °",o)
