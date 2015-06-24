clc
clear
//DATA GIVEN
r1=900/2000;                //radius of larger pulley in m
r2=300/2000;                //radius of smaller pulley in m
d=6;                        //distance between the centres of pulley in m

//Length of cross belt, Lcross=(pi)(r1+r2)+(r1+r2)^2/d+2d;
Lcross=(%pi)*(r1+r2)+(r1+r2)^2/d+2d;
//Length of open belt, Lopen=(pi)(r1+r2)+(r2-r1)^2/d+2d;
Lopen=(%pi)*(r1+r2)+(r2-r1)^2/d+2d;

Lred=Lcross-Lopen;          //length to be reduced
printf(' The Length of the belt to be reduced, \n (to change the direction of rotation of the follower pulleys)is: %2.0f mm. \n',(Lred*1000));
