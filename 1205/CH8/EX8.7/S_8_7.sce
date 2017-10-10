clc;
T1=400;//N, Force on free end of hawser
T2=25;//kN, Force on other end of hawser
T2=T2*1000;//N, conversion

//a, coefficient of friction
bta=2*2*%pi;//rad, angle of contact, 2 turns
//By equation 8.13
us=log(T2/T1)/bta;// Co-efficient of static friction
printf("Coefficient of static friction between hawser and ballard is us= %0.3f \n",us);

//Number of wraps when tension in hawser=75 kN
T2=75;//kN, Tension in hawser
T2=T2*1000;//N, conversion into N
bta=log(T2/T1)/us;//rad, angle of contact
//One turn = 2* pi angle, bta corresponds to
turns=bta/(2*%pi);//Number of turns
printf("Number of wraps when tension in hawser=75 kN are %.2f \n",turns);
