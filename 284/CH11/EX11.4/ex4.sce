// Chapter 11_ Metal-Oxide-Semiconductor Field Effect Transistor:Additional Concepts
//Caption_Breakdown voltage
//Ex_4//page 527
Nd=10^19    //donor concentration
Na=10^16    //acceptor concentration
L=1.2*10^-4     //channel length
ni=1.5*10^10     //intrinsic carrier concentration
Vbi=0.0259*log(Na*Nd/ni^2)
xdo=(2*eps*Vbi/(e*Na))^0.5   //zero biased source-substrate pn junction width
//xd=(2*eps*(VbiVDS)/(e*Na))^0.5   //reverse biased drain substrate pn junction width
xd=L-xdo   //at punch through
VbiVDS=xd^2*e*Na/(2*eps)    //Vbi+VDS
VDS=VbiVDS-Vbi
printf('The punch through voltage is %1.1f V',VDS)
