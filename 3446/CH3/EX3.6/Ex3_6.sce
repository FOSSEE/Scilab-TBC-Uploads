// Exa 3.6
// TO determine NO of fades per second, average fade duration and maximum velocity of mobile.

clc;
clear all;

p=1;// reﬂection coefﬁcient of ground 
c=3*10^8;// velocity of light in free space(m/sec)
e=2.71828;//Euler's number
fm=20;  //in Hz
fc=900*10^6; //carrier frequency in Hz

//solution
Nr=sqrt(2*%pi)*fm*p*e^-(p^2);
printf('NO of fades per second are %.2f  \n',Nr);
Afd=e^-(p^2)/(p*fm*sqrt(2*%pi));
printf(' Average fade duration is %.4f sec \n ',Afd);
v=fm*c/fc;
printf('Maximum velocity of mobile is %.2f m/sec = %d Km/hour \n',v,v*18/5);

