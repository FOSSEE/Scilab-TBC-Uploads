//CHAPTER 7 ILLUSRTATION 11 PAGE NO 207
//TITLE:GOVERNORS
//FIGURE 7.11
clc
clear
//===========================================================================================
//INPUT DATA
PI=3.147
g=9.81//                  ACCELERATION DUE TO GRAVITY IN N/mm^2
AE=.25//                  LENGTH OF UPPER ARM IN m
CE=.25//                  LENGTH OF LOWER ARM IN m
ER=.175//                 FROM FIGURE 7.11
AP=.025//                 FROM FIGURE 7.11
FR=AP//                   FROM FIGURE 7.11
CQ=FR//                   FROM FIGURE 7.11
m=3.2//                     MASS OF BALL IN Kg
M=25//                    MASS OF SLEEVE IN Kg
h=.2//                    VERTICAL HEIGHT OF GOVERNOR IN m
EM=h//                    FROM FIGURE 7.11
AF=h//                    FROM FIGURE 7.11
N=160//                   SPEED OF THE GOVERNOR IN rpm
HM=(895*EM*(m+M)/(h*N^2*m))
x=HM-EM//                LENGTH OF EXTENDED LINK IN m
T1=g*(m+M/2)*AE/AF//     TENSION IN UPPER ARM IN N
printf('LENGTH OF EXTENDED LINK = %.3f m\n TENSION IN UPPER ARM =%.3f N',x,T1)
