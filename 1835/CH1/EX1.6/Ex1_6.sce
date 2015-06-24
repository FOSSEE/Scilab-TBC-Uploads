
//CHAPTER 1 ILLUSRTATION 6 PAGE NO 20
//TITLE:Basic kinematics
//Figure 1.22,1.23
clc
clear
pi=3.141
AB=6.25//     length of link AB in cm
BC=17.5//     length of link BC in cm
CD=11.25//    length of link CD in cm
DA=20//       length of link DA in cm
CE=10
N=100//       speed of crank in rpm
//========================
wAB=2*pi*N/60//      angular velocity of AB in rad/s
Vb=wAB*AB//          linear velocity of B with respect to A
s=15//      scale for velocity diagram 1 cm= 15 cm/s
dc=3//      by measurement in cm
Vcd=dc*s
wCD=Vcd/CD//       angular velocity of link CD in rad/s
bc=2.5//    by measurement in cm
Vbc=bc*s
wBC=Vbc/BC//     angular velocity of link BC in rad/s
ce=bc*CE/BC
ae=3.66//       by measurement in cm
Ve=ae*s//         velocity of point E 10 from c on the link BC
af=2.94//       by measurement in cm
Vf=af*s//       velocity of point F
printf('The angular velocity of link CD= %.3f rad/s\n The angular velocity of link BC= %.3f rad/s\n velocity of point E 10 from c on the link BC= %.3f cm/s\n velocity of point F= %.3f cm/s',wCD,wBC,Ve,Vf)
