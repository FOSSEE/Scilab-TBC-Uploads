//CHAPTER 1 ILLUSRTATION 10 PAGE NO 24
//TITLE:Basic kinematics
//Figure 1.30(a),1.30(b),1.30(c)
clc
clear
pi=3.141
Nao=300//         speed of crank in rpm
AO=.15//          length of crank in m
BA=.6//           length of connecting rod in m
//===================
wAO=2*pi*Nao/60//        angular velocity of link in rad/s
Vao=wAO*AO//             linear velocity of A with respect to 'o'
ab=3.4//        length of vector ab by measurement in m/s
Vba=ab
ob=4//        length of vector ob by measurement in m/s
oc=4.1//         length of vector oc by measurement in m/s
fRao=Vao^2/AO//    radial component of acceleration of A with respect to O
fRba=Vba^2/BA//     radial component of acceleration of B with respect to A
wBA=Vba/BA//        angular velocity of connecting rod BA
fTba=103//         by measurement in m/s^2
alphaBA=fTba/BA//    angular acceleration of connecting rod BA
printf('linear velocity of A with respect to O= %.3f m/s\n radial component of acceleration of A with respect to O= %.3f m/s^2\n radial component of acceleration of B with respect to A= %.3f m/s^2\n angular velocity of connecting rod B= %.3f rad/s\n angular acceleration of connecting rod BA= %.3f rad/s^2',Vao,fRao,fRba,wBA,alphaBA)
