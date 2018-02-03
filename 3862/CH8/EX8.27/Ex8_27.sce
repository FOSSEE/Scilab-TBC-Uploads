clear
//

//variable declaration

d1=(25)                 // variation linearly in diameter from 25 mm to 50 mm 
d2=(50)
L=(500)                 //length,mm
alpha=(0.000012)        //expansion coeffecient,/°C
t=25                  //rise in temperture,°C
E=2*100000            //Young's modulus,N/mm^2

delta=alpha*t*L

//If P is the force developed by supports, then it can cause a contraction of 4*P*L/(%pi*d1*d2*E)

P=(delta*%pi*d1*d2*E)/(4*L)
Am=%pi*(d1**2)/4
Ms=P/Am

printf("\n Corresponding maximum stress =  %0.1f  N/mm^2",Ms)
