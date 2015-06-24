clc
//Initialization of variables
mca=0.01 //m
mcl=0.02 //m
//calculations
Mu=0.5*(mca*4 + mcl*1)
disp("From table 14-5,")
aca=6 //A
acl=3 //A
disp("From table 14-6,")
gaca=0.555 
gacl=0.843
Aca=gaca*mca
Acl=gacl*mcl
//results
printf("Activity of cl = %.4f ",Acl)
printf("\n Activity of ca = %.4f ",Aca)
