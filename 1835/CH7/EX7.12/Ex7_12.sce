//CHAPTER 7 ILLUSRTATION 12 PAGE NO 208
//TITLE:GOVERNORS
//FIGURE 7.12,7.13
clc
clear
//===========================================================================================
//INPUT DATA
PI=3.147
EF=.20//               MINIMUM RADIUS OF ROTATION IN m
AE=.30//               LENGTH OF EACH ARM IN m
A1E1=AE//              COMPARING FIRUES 7.12&7.13
EC=.30//               LENGTH OF EACH ARM IN m
E1C1=EC//              LENGTH OF EACH ARM IN m
ED=.165//              FROM FIGURE 7.12 IN m
MC=ED//                FROM FIGURE 7.12
EH=.10//                FROM FIGURE 7.12 IN m
m=8//                  MASS OF BALL IN Kg 
M=60//                 MASS OF SLEEVE IN Kg
DF=.035//              SLEEVE DISTANCE FROM AXIS IN m
E1F1=.25//             MAX RADIUS OF ROTATION IN m
g=9.81
//=========================================================
alpha=asind(EF/AE)//     ANGLE OF INCLINATION OF THE ARM TO THE VERTICAL IN DEGREES
beeta=asind(ED/EC)//     ANGLE OF INCLINATION OF THE ARM TO THE HORIZONTAL IN DEGREES
k=tand(beeta)/tand(alpha)
h=(AE^2-EF^2)^.5//        HEIGHT OF GOVERNOR IN m
EM=(EC^2-MC^2)^.5//       FROM FIGURE 7.12 IN m
HM=EM+EH
N2=(895*EM*(m+(M/2*(1+k)))/(h*HM*m))^.5//      EQUILIBRIUM SPEED AT MAX RADIUS
HC=(HM^2+MC^2)^.5//                      FROM FIGURE 7.13 IN m
H1C1=HC
gama=atand(MC/HM)
alpha1=asind(E1F1/A1E1)
E1D1=E1F1-DF//                             FROM FIGURE 7.13 IN m
beeta1=asind(E1D1/E1C1)
gama1=gama-beeta+beeta1
r=H1C1*sind(gama1)+DF//                      RADIUS OF ROTATION IN m
H1M1=H1C1*cosd(gama1)
I1C1=E1C1*cosd(beeta1)*(tand(alpha1)+tand(beeta1))// FROM FIGURE IN m
M1C1=H1C1*sind(gama1)
w1=(((m*g*(I1C1-M1C1))+(M*g*I1C1)/2)/(m*r*H1M1))^.5//   ANGULAR SPEED IN rad/s
N1=w1*60/(2*PI)//                         //SPEED IN m/s
printf('MINIMUM SPEED OF ROTATION = %.3f rpm\n MAXIMUM SPEED OF ROTATION = %.3f rpm',N2,N1)

