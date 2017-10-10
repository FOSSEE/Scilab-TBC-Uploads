clear;
clc;
//there are 9 distances and self GMD of conducto will be the ninth root of the product of the nine distance
d12=2;//consider 2 as 2r r=radius
d23=2;//consider 2 as 2r r=radius
d13=2; //consider 2 as 2r r=radius
r1=.7788; // onsider .7788 as .7788r
SGMD=((((.7788)^3)*(d12^2)*(d23^2)*(d13^2))^(1/9))
mprintf("Self-GMD = %.4fr",SGMD);
