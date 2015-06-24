//chapter 3
//helical antenna
//part a
printf("\n");
c=3*10^8;
f=3*10^9;
lamda=c/f;
printf("the wavelength is %gm",lamda);
//part b
n=20;
s=0.03;
c=0.1;
Gdmax=(15*20*0.3*(0.1)^2)/(0.1)^3;
printf("\nthe directive gain is %g",Gdmax);
//part c
HPBW=sqrt((0.1)^3/(20*0.03))*520;
printf("\nthe half power beamwidth is %gdegree",HPBW);
