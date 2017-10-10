clc
//
//
//

//Variable declaration
theta1=9.9       //rotation of plane
l=2              //Length
c=0.08           //Concentration
s2=66            //specific rotation

//Calculations
s1=((theta1)/(l*c))
pis=((s2-s1)/s2)*100
pps=100-pis


//Result
printf("\n percentage of purity of sample %0.3f percentage",pps)
