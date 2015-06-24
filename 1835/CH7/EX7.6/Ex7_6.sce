//CHAPTER 7 ILLUSRTATION 6 PAGE NO 202
//TITLE:GOVERNORS
//FIGURE 7.9
clc
clear
//===========================================================================================
//INPUT DATA
g=9.81//                   ACCELERATION DUE TO GRAVITY 
OA=.30//                  LENGHT OF UPPER ARM IN m
AC=.30//                  LENGTH OF LOWER ARM IN m
m=5//                     MASS OF BALL IN Kg
M=25//                    MASS OF SLEEVE IN Kg
X=.05//                   LIFT OF THE SLEEVE
alpha=30//                ANGLE OF INCLINATION OF THE ARM TO THE VERTICAL
//==============================================
h2=OA*cosd(alpha)//        HEIGHT OF THE GOVERNOR AT LOWEST POSITION OF SLEEVE
h1=h2-X/2//                HEIGHT OF THE GOVERNOR AT HEIGHT POSITION OF SLEEVE
F=((h2/h1)*(m*g+M*g)-(m*g+M*g))/(1+h2/h1)//      FRICTION AT SLEEVE IN N
N1=((m*g+M*g+F)*895/(h1*m*g))^.5//          MAX SPEEED OF THE GOVVERNOR IN rpm
N2=((m*g+M*g-F)*895/(h2*m*g))^.5//          MIN SPEEED OF THE GOVVERNOR IN rpm
R=N1-N2//                                   RANGE OF SPEED IN rpm

printf('THE VALUE OF FRICTIONAL FORCE= %.3f F\n RANGE OF SPEED OF THE GOVERNOR = %.0f rpm',F,R)
