//CHAPTER 3 ILLUSRTATION 1 PAGE NO 102
//TITLE:FRICTION
//FIRURE 3.16(a),3.16(b)
clc
clear
//===========================================================================================
//INPUT DATA
P1=180//                        PULL APPLIED TO THE BODY IN NEWTONS
theta=30//                      ANGLE AT WHICH P IS ACTING IN DEGREES
P2=220//                        PUSH APPLIED TO THE BODY IN NEWTONS
//Rn=                           NORMAL REACTION
//F=                            FORCE OF FRICTION IN NEWTONS
//U=                            COEFFICIENT OF FRICTION
//W=                            WEIGHT OF THE BODY IN NEWTON
//==========================================================================================
//CALCULATION
F1=P1*cosd(theta)//              RESOLVING FORCES HORIZONTALLY FROM 3.16(a)
F2=P2*cosd(theta)//              RESOLVING FORCES HORIZONTALLY FROM 3.16(b)
//                               RESOLVING FORCES VERTICALLY  Rn1=W-P1*sind(theta) from 3.16(a)
//                               RESOLVING FORCES VERTICALLY  Rn2=W+P1*sind(theta) from 3.16(b)
//                               USING THE RELATION F1=U*Rn1    &     F2=U*Rn2  AND SOLVING FOR W BY DIVIDING THESE TWO EQUATIONS
X=F1/F2//                        THIS IS THE VALUE OF   Rn1/Rn2
Y1=P1*sind(theta)
Y2=P2*sind(theta)
W=(Y2*X+Y1)/(1-X)//                BY SOLVING ABOVE 3 EQUATIONS
U=F1/(W-P1*sind(theta))//          COEFFICIENT OF FRICTION
//=============================================================================================
//OUTPUT
printf('WEIGHT OF THE BODY =%.3fN\nTHE COEFFICIENT OF FRICTION =%.3f',W,U)
