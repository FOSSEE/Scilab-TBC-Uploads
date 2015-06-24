//CHAPTER 11 ILLUSRTATION 2 PAGE NO 290
//TITLE:VIBRATIONS
//FIGURE 11.10
clc
clear
//===========================================================================================
//INPUT DATA
PI=3.147
L=.9//                          LENGTH OF THE SHAFT IN m
m=100//                         MASS OF THE BODY IN Kg
L2=.3//                         LENGTH WHERE THE WEIGHT IS ACTING IN m
L1=L-L2//                       DISTANCE FROM THE OTHER END
D=.06//                         DIAMETER OF SHAFT IN m
W=9.81*m//                      WEGHT IN NEWTON
E=200*10^9//                     YOUNGS MODUKUS OF SHAFT MATERIAL IN Pascals
//==========================================================================================
//CALCULATION
I=PI*D^4/64//                   MOMENT OF INERTIA IN m^4
delta=W*L1^2*L2^2/(3*E*I*L)//  STATIC DEFLECTION
Fn=.4985/(delta)^.5//           NATURAL FREQUENCY OF TRANSVERSE VIBRATION
//=========================================================================================
//OUTPUT
printf('NATURAL FREQUENCY OF TRANSVERSE VIBRATION=%.3f Hz',Fn)
