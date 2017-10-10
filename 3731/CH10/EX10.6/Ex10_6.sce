//Chapter 10:Traction Drives
//Example 6
clc;

//Variable Initialization
G=10        //up gradient of the locomotive
Ml=110      //weight of the locomotive coach in tonne
Mt=500      //weight of the train in tonne
r=35        //train resistance N/tonne
n=0.8       //80% of the locomotive weight is carried by the driving wheels
alpha=1     //acelaration in kmphps

//Solution
//when only the 110 tonne locomotive is present
Md=Ml*n     //weight of the motor
M=Mt+Ml     //total mass of the train
Me=1.1*M
Ft=277.8*Me*alpha+9.81*M*G+M*r  //total tractive effort required to move the train
Fm=Ft
u=Fm/(9810*Md)   //co-efficient of adhesion ,since Fm=9810*u*Md

//when another locomotive of 70 is added together
Md=Ml*n+70      // mass of the motor
M_=Mt+Ml+70     // mass of the train
Fm=9810*u*Md
Ft=Fm
M=Ft/(277.8*1.1*alpha+9.81*G+r)  //total mass of the train, since Ft=277.8*Me*alpha+9.81*M*G+M*r
W=M-M_          //weight of additional bogies to be attached


//Results
mprintf("\n Given co-efficient of adhesion is: %.2f",u)
mprintf("\n Weight of additional bogies to be attached is:%.1f T",W)
