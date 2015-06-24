//CHAPTER 11 ILLUSRTATION 6 PAGE NO 294
//TITLE:VIBRATIONS
//FIGURE 11.14
clc
clear
//===========================================================================================
//INPUT DATA
PI=3.147
g=9.81//                                      ACCELERATION DUE TO GRAVITY IN N /m^2
D=.06//                                       DIAMETER OF SHAFT IN m
L=3//                                         LENGTH OF SHAFT IN m
W1=1500//                                     WEIGHT ACTING AT C IN N
W2=2000//                                     WEIGHT ACTING AT D IN N
W3=1000//                                     WEIGHT ACTING AT E IN N
L1=1//                                        LENGTH FROM A TO C IN m
L2=2//                                        LENGTH FROM A TO D IN m
L3=2.5//                                        LENGTH FROM A TO E IN m
I=PI*D^4/64
E=200*10^9//                     YOUNGS MODUKUS OF SHAFT MATERIAL IN Pascals
//===========================================================================================
DELTA1=W1*L1^2*(L-L1)^2/(3*E*I*L)//           STATIC DEFLECTION DUE TO W1
DELTA2=W2*L2^2*(L-L2)^2/(3*E*I*L)//           STATIC DEFLECTION DUE TO W2
DELTA3=W2*L3^2*(L-L3)^2/(3*E*I*L)//           STATIC DEFLECTION DUE TO W2
Fn=.4985/(DELTA1+DELTA2+DELTA3)^.5//          FREQUENCY OF TRANSVERSE VIBRATION  IN Hz
//==========================================================================================
printf('FREQUENCY OF TRANSVERSE VIBRATION = %.3f Hz',Fn)
