clear
//
l=6.0    //length of ladder
u1=0.4    //coefficient of friction between the wall and the ladder
w=200.0   //weight of ladder
u2=0.25    //coefficient of friction between floor and the ladder
wl=900.0     //weight of load
ll=5.0      //distance of load
//force balancing
//Na Nb   normal reaction at A and B
//Fa Fb    friction  at A and B
//Fa=u2*Na              
//Fb=u1*Nb
//Na+Fb=w+wl
//Fa=Nb
Nb=(wl+w)*u2/(1+u2*u1)
Na=Nb/u2
Fa=u2*Na
Fb=u1*Nb
//sum of all moments about a is =0
temp=((w*l*0.5)+(wl*ll)-(Fb*l))/(Nb*l)
o=atan(temp)*180/3.14
printf("\n Angle of inclination is  %0.3f  degrees",o)
