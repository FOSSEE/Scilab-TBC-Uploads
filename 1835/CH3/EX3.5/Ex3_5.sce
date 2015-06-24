//CHAPTER 3 ILLUSRTATION 5 PAGE NO 105
//TITLE:FRICTION
clc
clear
//===========================================================================================
//INPUT DATA
d=5//                     DIAMETER OF SCREW JACK IN cm
p=1.25//                  PITCH IN cm
l=50//                    LENGTH IN cm
U=.1//                    COEFFICIENT OF FRICTION
W=20000//                 LOAD IN NEWTONS
PI=3.147
//=============================================================================================
//CALCULATION
ALPHA=atand(p/(PI*d))
PY=atand(U)
P=W*tand(ALPHA+PY)
P1=P*d/(2*l)
//=============================================================================================
//OUTPUT
printf('THE AMOUNT OF EFFORT NEED TO APPLY =%3.3f N',P1)
