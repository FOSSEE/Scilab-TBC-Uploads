//CHAPTER 2 ILLUSRTATION 7 PAGE NO 62
//TITLE:TRANSMISSION OF MOTION AND POWER BY BELTS AND PULLEYS
clc
clear
//===========================================================================================
//INPUT DATA
m=1000//                             MASS OF THE CASTING IN kg
PI=3.141
THETA=2.75*2*PI//                    ANGLE OF CONTACT IN radians
D=.26//                               DIAMETER OF DRUM IN m
N=24//                                SPEED OF THE DRUM IN rpm
U=.25//                               COEFFICIENT OF FRICTION
e=2.71
T1=9810//                             TENSION ON TIGHTSIDE IN N
//=============================================================================================
//CALCULATION
T2=T1/(e^(U*THETA))//                 tension on slack side of belt in N
W=m*9.81//                            WEIGHT OF CASTING IN N
R=D/2//                               RADIUS OF DRUM IN m
P=2*PI*N*W*R/60000//                  POWER REQUIRED IN kW
P2=(T1-T2)*PI*D*N/60000//                  POWER SUPPLIED BY DRUM IN kW
//============================================================================================
//OUTPUT
printf('FORCE REQUIRED BY MAN=%f N\n POWER REQUIRED TO RAISE CASTING=%f kW\n POWER SUPPLIED BY DRUM=%f kW\n',T2,P,P2)

