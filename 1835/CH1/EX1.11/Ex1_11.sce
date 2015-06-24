//CHAPTER 1 ILLUSRTATION 11 PAGE NO 26
//TITLE:Basic kinematics
//Figure 1.31(a),1.31(b),1.31(c)
clc
clear
pi=3.141
wAP=10//            angular velocity of crank in rad/s
P1A=30//            length of link P1A in cm
P2B=36//            length of link P2B in cm
AB=36//             length of link AB in cm
P1P2=60//           length of link P1P2 in cm
AP1P2=60//          crank inclination in degrees 
alphaP1A=30//       angulare acceleration of crank P1A in rad/s^2
//=====================================
Vap1=wAP*P1A/100//    linear velocity of A with respect to P1 in m/s
Vbp2=2.2//            velocity of B with respect to P2 in m/s(measured from figure )
Vba=2.06//            velocity of B with respect to A in m/s(measured from figure )
wBP2=Vbp2/(P2B*100)//   angular velocity of P2B in rad/s
wAB=Vba/(AB*100)//      angular velocity of AB in rad/s
fAB1=alphaP1A*P1A/100//  tangential component of the acceleration of A with respect to P1 in m/s^2
frAB1=Vap1^2/(P1A/100)//  radial component of the acceleration of A with respect to P1 in m/s^2
frBA=Vba^2/(AB/100)//     radial component of the acceleration of B with respect to B in m/s^2
frBP2=Vbp2^2/(P2B/100)//    radial component of the acceleration of B with respect to P2 in m/s^2
ftBA=13.62//             tangential component of B with respect to A in m/s^2(measured from figure)
ftBP2=26.62//            tangential component of B with respect to P2 in m/s^2(measured from figure)
alphaBP2=ftBP2/(P2B/100)//   angular acceleration of P2B in m/s^2
alphaBA=ftBA/(AB/100)//      angular acceleration of AB in m/s^2
//==========================
printf('Angular acceleration of P2B=%.3f rad/s^2\n angular acceleration of AB =%.3f rad/s^2',alphaBP2,alphaBA)
