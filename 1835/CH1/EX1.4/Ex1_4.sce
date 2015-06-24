//CHAPTER 1 ILLUSRTATION 4 PAGE NO 17
//TITLE:Basic kinematics
//Figure 1.18,1.19
clc
clear
pi=3.141
Nao=180//     speed of the crank in rpm
wAO=2*pi*Nao/60//  angular speed of the crank in rad/s
AO=.5//          crank length in m
AE=.5
Vao=wAO*AO//      velocity of A in m/s
//================================
Vb1=8.15//    velocity of piston B in m/s by measurment from figure 1.19
Vba=6.8//    velocity of B with respect to A in m/s
AB=2//       length of connecting rod in m
wBA=Vba/AB//      angular velocity of the connecting rod BA in rad/s
ae=AE*Vba/AB//     velocity of point e on the connecting rod
oe=8.5//           by measurement velocity of point E
Do=.05//           diameter of crank shaft in m
Da=.06//           diameter of crank pin in m
Db=.03//           diameter of cross head pin B m
V1=wAO*Do/2//            velocity of rubbing at the pin of the crankshaft in m/s
V2=wBA*Da/2//            velocity of rubbing at the pin of the crank in m/s
Vb=(wAO+wBA)*Db/2//      velocity of rubbing at the pin of cross head in m/s
ag=5.1//                by measurement
AG=AB*ag/Vba//      position and linear velocity of point G on the connecting rod in m
//===============================
printf('Velocity of piston B= %.3f m/s\n Angular velocity of connecting rod= %.3f rad/s\n velocity of point E=%.1f m/s\n velocity of rubbing at the pin of the crankshaft=%.3f m/s\n velocity of rubbing at the pin of the crank =%.3f m/s\n velocity of rubbing at the pin of cross head =%.3f m/s\n position and linear velocity of point G on the connecting rod=%.3f m',Vb1,wBA,oe,V1,V2,Vb,AG)





 
