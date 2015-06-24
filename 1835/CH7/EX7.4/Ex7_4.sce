//CHAPTER 7 ILLUSRTATION 4 PAGE NO 199
//TITLE:GOVERNORS
//FIGURE 7.7
clc
clear
//===========================================================================================
//INPUT DATA
g=9.81//                   ACCELERATION DUE TO GRAVITY 
OA=.20//                  LENGHT OF UPPER ARM IN m
AC=.20//                  LENGTH OF LOWER ARM IN m
CD=.025//                 DISTANCE BETWEEN AXIS AND LOWER ARM IN m
AB=.1//                   RADIUS OF ROTATION OF BALLS IN m
N2=250//                  SPEED OF THE GOVERNOR IN rpm
X=.05//                   SLEEVE LIFT IN m
m=5//                     MASS OF BALL IN Kg
M=20//                    MASS OF SLEEVE IN Kg
//===========================================================
h2=(OA^2-AB^2)^.5//               OB DISTANCE IN m IN FIGURE
h21=(AC^2-(AB-CD)^2)^.5//         BD DISTANCE IN m IN FIGURE
TANbeeta=(AB-CD)/h21//            TAN OF ANGLE OF INCLINATION OF THE LINK TO THE VERTICAL
TANalpha=AB/h2//                  TAN OF ANGLE OF INCLINATION OF THE ARM TO THE VERTICAL
k=TANbeeta/TANalpha
c=X/(2*(h2*(1+k)-X))//            PERCENTAGE INCREASE IN SPEED 
n=c*N2//                          INCREASE IN SPEED IN rpm
N1=N2+n//                          SPEED AFTER LIFT OF SLEEVE
E=c*g*((2*m/(1+k))+M)//            GOVERNOR EFFORT IN N
P=E*X//                            GOVERNOR POWER IN N-m

printf('SPEED OF THE GOVERNOR WHEN SLEEVE IS LIFT BY 5 cm = %.3f rpm\n GOVERNOR EFFORT = %.3f N\n GOVERNOR POWER = %.3f N-m',N1,E,P)
