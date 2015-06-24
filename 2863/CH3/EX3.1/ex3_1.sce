//chapter 3
//tan(alpha)=s/c;
//helical antenna Gdmax=15NSC^2/lamda^3
printf("\n");
c=1;
n=20;
lamda=1;
s=tan(0.2093)*1;//12*pi/180 radians
Gdmax=(15*n*s*(c)^2)/(lamda)^3;
printf("the directive gain is %g",Gdmax);
