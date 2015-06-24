//Chapter-18,Example 1,Page 404
clc();
close();

H=6

W= 2200    //water equivalent of bomb calorimeter

w= 550    //weight of water taken

del_t = 2.42    //rise in temperature

m= 0.92    //weight of coal burnt

L =580    //latent heat of steam

fuse = 10   //fuse correction

acid =50    //acid correction

HCV=((W+w)*(del_t)-(acid+fuse))/m

NCV=HCV-(0.09*H*L)

printf("HCV = %.2f cal/g",HCV)

printf("\n NCV = %.2f cal/g",NCV)
