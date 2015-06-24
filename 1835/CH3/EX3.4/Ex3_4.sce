//CHAPTER 3 ILLUSRTATION 4 PAGE NO 104
//TITLE:FRICTION
//FIRURE 3.19(a)  &  3.19(b)
clc
clear
//===========================================================================================
//INPUT DATA
P1=2000//           FORCE ACTING UPWARDS WHEN ANGLE=15 degrees IN NEWTONS
P2=2300//           FORCE ACTING UPWARDS WHEN ANGLE=20 degrees IN NEWTONS
THETA1=15//         ANGLE OF INCLINATION IN 3.19(a)
THETA2=20//         ANGLE OF INCLINATION IN 3.19(b)
//F1=               FORCE OF FRICTION IN 3.19(a)
//Rn1=              NORMAL REACTION IN 3.19(a)
//F2=               FORCE OF FRICTION IN 3.19(b)
//Rn2=              NORMAL REACTION IN 3.19(b)
//U=                 COEFFICIENT OF FRICTION
//===========================================================================================
//CALCULATION
//P1=F1+Rn1             RESOLVING THE FORCES ALONG THE PLANE
//Rn1=W*cosd(THETA1)....NORMAL REACTION IN 3.19(a)
//F1=U*Rn1
//BY SOLVING ABOVE EQUATIONS P1=W(U*cosd(THETA1)+sind(THETA1))---------------------1
//P2=F2+Rn2             RESOLVING THE FORCES PERPENDICULAR TO THE PLANE
//Rn2=W*cosd(THETA2)....NORMAL REACTION IN 3.19(b)
//F2=U*Rn2
//BY SOLVING ABOVE EQUATIONS P2=W(U*cosd(THETA2)+sind(THETA2))----------------------2
//BY SOLVING EQUATIONS 1 AND 2
X=P2/P1
U=(sind(THETA2)-(X*sind(THETA1)))/((X*cosd(THETA1)-cosd(THETA2)))//        COEFFICIENT OF FRICTION
W=P1/(U*cosd(THETA1)+sind(THETA1))
//=============================================================================================
//OUTPUT
//printf('%f',X)
printf('COEFFICIENT OF FRICTION=%3.3f\n WEIGHT OF THE BODY=%3.3f N',U,W)
