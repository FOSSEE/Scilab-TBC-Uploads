//CHAPTER 1 ILLUSRTATION 12 PAGE NO 28
//TITLE:Basic kinematics
//Figure 1.32(a),1.32(b),1.32(c)
clc
clear
PI=3.141
AB=12//    length of link AB in cm
BC=48//    length of link BC in cm
CD=18//    length of link CD in cm
DE=36//    length of link DE in cm
EF=12//    length of link EF in cm
FP=36//    length of link FP in cm
Nba=200//   roating speed of link BA IN rpm
wBA=2*PI*200/60//    Angular velocity of BA in rad/s
Vba=wBA*AB/100//    linear velocity of B with respect to A in m/s
Vc=2.428//   velocity of c in m/s from diagram 1.32(b)
Vd=2.36//     velocity of D in m/s from diagram 1.32(b)
Ve=1//    velocity of e in m/s from diagram 1.32(b)
Vf=1.42//    velocity of f in m/s from diagram 1.32(b)
Vcb=1.3//    velocity of c with respect to b in m/s from figure
fBA=Vba^2*100/AB//   radial component of acceleration of B with respect to A in m/s^2
fCB=Vcb^2*100/BC//   radial component of acceleration of C with respect to B in m/s^2
fcb=3.52//          radial component of acceleration of C with respect to B in m/s^2 from figure
fC=19//              acceleration of slider in m/s^2 from figure
printf('velocity of c=%.3f m/s\n velocity of d=%.3f m/s\n velocity of e=%.3f m/s\n velocity of f=%.3f m/s\n Acceleration of slider=%f m/s^2',Vc,Vd,Ve,Vf,fC)




