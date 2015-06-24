//CHAPTER 11 ILLUSRTATION 12 PAGE NO 298
//TITLE:VIBRATIONS
//FIGURE 11.20
clc
clear
//===========================================================================================
//INPUT DATA
PI=3.147
g=9.81//                                      ACCELERATION DUE TO GRAVITY IN N /m^2
Na=1500//                                     SPEED OF SHAFT A IN rpm
Nb=500//                                      SPEED OF SHAFT B IN rpm
G=Na/Nb//                                     GERA RATIO
L1=.18//                                       LENGTH OF SHAFT 1 IN m
L2=.45//                                       LENGTH OF SHAFT 2 IN m
D1=.045//                                      DIAMETER OF SHAFT 1 IN m
D2=.09//                                       DIAMETER OF SHAFT 2 IN m
C=84*10^9//                      MODUKUS OF RIDITY OF SHAFT MATERIAL IN Pascals
Ib=1400//                        MOMENT OF INERTIA OF PUMP IN Kg-m^2
Ia=400//                         MOMENT OF INERTIA OF MOTOR IN Kg-m^2

//======================================================================================
J=PI*D1^4/32//                               POLAR MOMENT OF INERTIA IN m^4
Ib1=Ib/G^2//                     MASS MOMENT OF INERTIA OF EQUIVALENT ROTOR IN m^2
L3=G^2*L2*(D1/D2)^4//            ADDITIONAL LENGTH OF THE EQUIVALENT SHAFT
L=L1+L3//                         TOTAL LENGTH OF EQUIVALENT SHAFT
La=L*Ib1/(Ia+Ib1)
Fn=(C*J/(La*Ia))^.5/(2*PI)//      FREQUENCY OF FREE TORSIONAL VIBRATION IN Hz
//===================================================================================
printf('FREQUENCY OF FREE TORSIONAL VIBRATION = %.2f Hz',Fn)
