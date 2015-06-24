//CHAPTER 11 ILLUSRTATION 11 PAGE NO 297
//TITLE:VIBRATIONS
//FIGURE 11.19
clc
clear
//===========================================================================================
//INPUT DATA
PI=3.147
g=9.81//                                      ACCELERATION DUE TO GRAVITY IN N /m^2
E=210*10^9//                                  YOUNGS MODUKUS OF SHAFT MATERIAL IN Pascals
D=.18//                                       DIAMETER OF SHAFT IN m
L=2.5//                                       LENGTH OF SHAFT IN m
M1=25//                                       MASS ACTING AT E IN Kg
M2=50//                                       MASS ACTING AT D IN Kg
M3=20//                                       MASS ACTING AT C IN Kg
W1=M1*g
W2=M2*g
W3=M3*g
L1=.6//                                       LENGTH FROM A TO E IN m
L2=1.5//                                      LENGTH FROM A TO D IN m
L3=2//                                        LENGTH FROM A TO C IN m
w=1962//                                      SELF WEIGHT OF SHAFT IN N
//==========================================================================================
I=PI*D^4/64//                                 MOMENT OF INERTIA OF SHAFT IN m^4
DELTA1=W1*L1^2*(L-L1)^2/(3*E*I*L)//           STATIC DEFLECTION DUE TO W1
DELTA2=W2*L2^2*(L-L2)^2/(3*E*I*L)//           STATIC DEFLECTION DUE TO W2
DELTA3=W3*L3^2*(L-L3)^2/(3*E*I*L)//           STATIC DEFLECTION DUE TO W3
DELTA4=5*w*L^4/(384*E*I)//                    STATIC DEFLECTION DUE TO w
Fn=.4985/(DELTA1+DELTA2+DELTA3+DELTA4/1.27)^.5
Nc=Fn*60//                                   CRITICAL SPEED OF SHAFT IN rpm
//========================================================================================
printf('CRITICAL SPEED OF SHAFT = %.3f rpm',Nc)
