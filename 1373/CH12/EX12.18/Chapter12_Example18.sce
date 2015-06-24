//Chapter-12, Example 12.18, Page 534
//=============================================================================
clc
clear

//INPUT DATA
T=100;//Total length of tubes in m
//ct=10000 Rs - Cost of the tubes in Rs
//cs=(15000*D^3*L) Cost of the shell in Rs
//cf=(2000*D*L) Cost of the floor space occupied by the exchanger in Rs

//CALCULATIONS
//Cost=(ct+cs+cf) Total first cost in Rs
//Cost=(10000+(15000*D^3*L)+(2000*D*L))
//The constraint requires the heat exchanger to include 100m tubes such that (((3.1414*D^2)/4)*L*200)=100
//L=(2/(3.1415*D^2))
//Substitute L in the equation in line 8
//Cost=(10000+(15000*D^3*(2/(3.1415*D^2)))+(2000*D*(2/(3.1415*D^2))))
//Cost=(10000+((30000*D)/3.1415)+(4000/(3.1415*D)))
//For optimizaation partial derivative of Cost w.r.t D should be zero
//((30000/3.1415)-(4000/(3.1415*D^2)))=0
D=((3.1415*4000)/(3.1415*30000))^0.5;//Diameter of the exchanger in m
L=(2/(3.1415*D^2));//Length of the exchanger in m
Cost=(10000+(15000*D^3*L)+(2000*D*L));//Optimal cost in Rs

//Output
mprintf('The diameter of the exchanger is %3.3f m \n The Length of the exchanger is %3.2f m \n Optimal cost is %3.0f Rs',D,L,Cost)

//=================================END OF PROGRAM==============================
