clc
clear
disp('example 14_3')
ar1=500 //alternator rating1
pl=0.5  //each alternator is operating at half load 
ar2=200 //alternator rating2
f=50   //frequency
il=140  //load increase by 140 MW
fd=49.5  //frequency drops
fdd=-f+fd //frequency deviation 
dp1=(ar1*pl)-il  //change in load alternator 1
dp2=-(ar2*pl)+il //change in load of alternator 2
r1=-fdd/dp1  
r2=-fdd/dp2
printf(" R1=%.3fohm \n R2=%.4fohm",r1,r2)