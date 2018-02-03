clear
//
//

//Initilization of Variables
d=100 //mm //Diameter of solid shaft
d1=100 //mm //Outer Diameter of hollow shaft
d2=50  //mm //Inner Diameter of hollow shaft

//Calculations

//Torsional moment of solid shaft
//T_s=J*q_s*(d*2**-1)**-1 
//After substituting values in above equation and further simplifying we get
//T_s=%pi*16*d**3*q_s ...............(1)

//torsional moment for hollow shaft is
//T_h=J*q_s*(d1**4-d2**4)**-1*(d1*2**-1)
//After substituting values in above equation and further simplifying we get
//T_h=%pi*32**-1*2*d1**-1*(d1**4-d2**4)*q_s  ...........(2)

//Dividing Equation 2 by 1 we get
//Let the ratio of T_h*T_s**-1 Be X
X=1-0.5**4

//Loss in strength 
//Let s be the loss in strength
//s=T_s*T_h*100*T_s**-1
//After substituting values in above equation and further simplifying we get
s=(1-0.9375)*100

//Weight Ratio 
//Let w be the Weight ratio
//w=W_h*W_s**-1

A_h=%pi*32**-1*(d1**2-d2**2) //mm**2 //Area of Hollow shaft
A_s=%pi*32**-1*d**2 //mm**2 //Area of solid shaft

w=A_h*A_s**-1 

//Result
printf("\n Loss in strength is %0.2f  ",s)
printf("\n Weight ratio is %0.2f  ",w)
