clc;
//page 431
T1=150;//N, Force on free end of hawser
T2=7500;//N, Force on other end of hawser


//a, coefficient of friction
bta=2*2*%pi;//rad, angle of contact, 2 turns
//By equation 8.13
us=log(T2/T1)/bta;// Co-efficient of static friction
printf("Coefficient of static friction between hawser and ballard is us= %0.3f \n",us);

//Number of wraps when tension in hawser=75 kN

bta=3*2*%pi//in rad
//One turn = 2* pi angle, bta corresponds to
ten=T1*exp(bta*us)
printf("Tension  is %f N \n ",ten);
