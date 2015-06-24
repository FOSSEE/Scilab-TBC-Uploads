clc();
clear;
//To determine the thickness of the film
i=35;                                         //angle of incidence
mew=1.4;                                      //refractive index
r=asind(sin(i)/mew);
//2*mew*cos(r)=n*lambda
n=50;                                        //n(459)=(n+1)450
lambda=459*10^-9;
t=(n*lambda/(2*mew*0.9122214))*10^6          //thickness of the film
printf("The thickness of the film is %f micro meters",t);