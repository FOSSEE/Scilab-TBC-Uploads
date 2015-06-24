//chapter 6
//may june 2009
//parabolic reflector antenna
printf("\n");
BWFN=10;
f=3*10^9;
c=3*10^8;
lamda=c/f;
d=140*lamda/(BWFN);
printf("the diameter d is %gm",d);
//For circular parabolidal antenna
Ae=((%pi)*(d^2))/4;
printf("\nthe effective aperture is %gm^2",Ae);
