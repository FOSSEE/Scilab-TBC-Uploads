//chapter 2
//part a
printf("\n");
c=3*10^8;
f=10^9;
lamda=c/f;
printf("the wavelength is %gm",lamda);
//part b
dl=3*10^-2;
Rrad=80*(%pi)^2*(dl/lamda)^2;
printf("\nthe radiation resistance is %gohm",Rrad);
//part c
Gdmax=1.5//Gd=1.5sin^2(theta),where theta=90 for short dipole
n=0.6;
Gp=n*Gdmax;
printf("\nthe antenna gain is given by %g",Gp);
//part d
Ae=1.5*(lamda)^2/(4*(%pi));
printf("\nthe effective aperture is %gm^2",Ae);
