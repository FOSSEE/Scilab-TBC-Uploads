clc
//to calculate ratio of intensity at this point to that at the centre of a bright fringe
//the intensity at any pont is I=a1^2+a2^2+2*a1*a2*cos del
//let a1=a2=a
//phase difference del is 0
//then I0=a^2+a^2+2*a*a*cos 0
//we get I0=4a^2
I0=4 //intensity
//path difference is lemda/8
//phase difference =2*%pi/lemda*path difference=%pi/4
//I1=a^2+a^2+2a*a*cos %pi/4
//I1=3.414a^2
I1=3.414
intensity=I1/I0
disp(" ratio of intensity ="+string(intensity)+"unitless")
