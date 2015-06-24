clc
//Initialization of variables
ne=600 
gpm=2000
h=150
num=2
//calculations
ns=ne*sqrt(gpm) /h^(3/4)
gpm2=num*gpm
h2=num^2 *h
Ns=2*ne*sqrt(gpm2) /h2^(3/4)
Ne2=Ns*(h/2)^(3/4) /sqrt(gpm)
//results
printf("Specific speed in case1 = %d ",ns)
printf("\nFlow rate in case 2 = %d gpm",gpm2)
printf("\n Head in case 2 = %d ft",h2)
printf("\n Specific speed in case 2 = %d ",Ns)
printf("\n required operating speed in case 2 = %d rpm",Ne2)
