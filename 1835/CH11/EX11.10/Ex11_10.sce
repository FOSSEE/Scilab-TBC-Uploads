//CHAPTER 11 ILLUSRTATION 10 PAGE NO 296
//TITLE:VIBRATIONS
//FIGURE 11.18
clc
clear
//===========================================================================================
//INPUT DATA
PI=3.147
g=9.81//                                      ACCELERATION DUE TO GRAVITY IN N /m^2
E=200*10^9//                                  YOUNGS MODUKUS OF SHAFT MATERIAL IN Pascals
D=.03//                                       DIAMETER OF SHAFT IN m
L=.8//                                        LENGTH OF SHAFT IN m
r=40000//                                     DENSITY OF SHAFT MATERIAL IN Kg/m^3
W=10//                                        WEIGHT ACTING AT CENTRE IN N
//===========================================================================================
I=PI*D^4/64//                                 MOMENT OF INERTIA OF SHAFT IN m^4
m=PI*D^2/4*r//                                MASS PER UNIT LENGTH IN Kg/m
w=m*g
DELTA=W*L^3/(48*E*I)//                       STATIC DEFLECTION DUE TO W
DELTA1=5*w*L^4/(384*E*I)//                   STATIC DEFLECTION DUE TO WEIGHT OF SHAFT 
Fn=.4985/(DELTA+DELTA1/1.27)^.5
//==========================================================================================
printf('FREQUENCY OF TRANSVERSE VIBRATION = %.3f Hz',Fn)


