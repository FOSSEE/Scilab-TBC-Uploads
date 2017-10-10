//Chapter 10:Traction Drives
//Example 5
clc;

//Variable Initialization
Mm=40       //weight of the motor coach in tonne
Mt=35       //weight of the trailer in tonne
u=0.2       //co-efficient of adhesion
r=30        //train resistance N/tonne

//Solution
//(a)when the motor to trailer ratio is 1:2
M=Mm+2*Mt     //weight of one unit
Me=1.1*M
Md=40         //weight on the driving wheels
Fm=9810*u*Md  //total tractive effort without the wheel
Ft=Fm         //at maximum accelaration    
alpha=(Ft-M*r)/(277.8*Me) //required accelaration since Ft=277.8*u*alpha*M*r

//(b)when the motor to trailer ratio is 1:1
M=Mm+Mt       //weight of one unit
Me=1.1*M
Md=40         //weight on the driving wheels
Fm=9810*u*Md  //total tractive effort wihout the wheel
Ft=Fm         //at maximum accelaration    
alpha1=(Ft-M*r)/(277.8*Me) //required accelaration since Ft=277.8*u*alpha*M*r


//Results
mprintf("(a)Maximum accelaration on a level track  is alpha : %.4f kmphps",alpha)
mprintf("\n(b)Maximum accelaration when motor to trailer coaches ratio is 1:1 is alpha : %.3f kmphps",alpha1)
