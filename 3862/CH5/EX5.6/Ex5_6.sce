clear
//
o1=60.0*3.14/180.0    //angle of inclination of plane AC
o2=30.0*3.14/180.0    //angle of inclination of plane BC
Wbc=1000.0  //weight of block on plane BC
ubc=0.28    //coefficient of friction between the load and the plane BC 
uac=0.20   //coefficient of friction between the load and the plane AC
//for least weight 
N1=Wbc*cos(o2)                            //Normal Reaction
F1=ubc*N1                                       //frictional Force
T=Wbc*sin(o2)-F1                          //Tension
//for block on plane AC
//N2=Wcoso1
//F2=uac*N2
//T=F2+W sino2
W=T/(uac*cos(o1)+sin(o1))
printf("\n Least Weight is %0.3f  N",W)
//for greatest weight 
N1=Wbc*cos(o2)                            //Normal Reaction
F1=ubc*N1                                       //frictional Force
T=Wbc*sin(o2)+F1                          //Tension
//for block on plane AC
//N2=Wcoso1
//F2=uac*N2
//T=F2+W sino2
W=T/(-1*uac*cos(o1)+sin(o1))
printf("\n Greatest Weight is %0.3f  N",W)
