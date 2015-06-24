//CHAPTER 11 ILLUSRTATION 1 PAGE NO 290
//TITLE:VIBRATIONS
clc
clear
//===========================================================================================
//INPUT DATA
PI=3.147
D=.1//                           DIAMETER OF SHAFT IN m
L=1.10//                          LENGTH OF SHAFT IN m
W=450//                          WEIGHT ON THE OTHER END OF SHAFT IN NEWTONS
E=200*10^9//                     YOUNGS MODUKUS OF SHAFT MATERIAL IN Pascals
//   =========================================================================================
A=PI*D^2/4//                    AREA OF SHAFT IN mm^2
I=PI*D^4/64//                   MOMENT OF INERTIA 
delta=W*L/(A*E)//               STATIC DEFLECTION IN LONGITUDINAL VIBRATION OF SHAFT IN m
Fn=0.4985/(delta)^.5//         FREQUENCY OF LONGITUDINAL VIBRATION IN Hz
delta1=W*L^3/(3*E*I)//           STATIC DEFLECTION IN TRANSVERSE VIBRATION IN m
Fn1=0.4985/(delta1)^.5//        FREQUENCY OF TRANSVERSE VIBRATION  IN Hz
//============================================================================================
//OUTPUT
printf('FREQUENCY OF LONGITUDINAL VIBRATION =%.3f Hz\n FREQUENCY OF TRANSVERSE VIBRATION =%.3f Hz',Fn,Fn1)



