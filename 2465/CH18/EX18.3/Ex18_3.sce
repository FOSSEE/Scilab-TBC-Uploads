//Chapter-18,Example 3,Page 405
clc();
close();

H=0.77

W= 395    //water equivalent of bomb calorimeter

w= 3500    //weight of water taken

T1=26.5    //temperature

T2=29.2    //temperature

m= 0.83    //weight of fuel burnt

L =587   //latent heat of steam

HCV=((W+w)*(T2-T1))/m

NCV=HCV-(0.09*H*L)

printf("HCV = %.2f cal/g",HCV)

printf("\n NCV = %.2f cal/g",NCV)

//calculation mistake in textbook
