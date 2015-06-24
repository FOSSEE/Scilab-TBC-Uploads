// To calculate the accuracy of the measured value of resistance and to find the upper and lower values
// example 7-5 in page 169
clc;
//Data given
R=2.755e+3;//measured value of R in ohm
E=[0.05 0.05 0.1]// percentage errors of the resistances P Q and S respectivly
//calculation
Re=sum(E);// percentage error in R
Rmax=R+((Re/100)*R);//upper limit of resistance R in ohm
Rmin=R-((Re/100)*R);// lower limit of resistance R in ohm
printf("the upper and lower limits of R are %.4f K-ohm and %.4f K-ohm respectively",Rmax/1000,Rmin/1000);
//result
// the upper and lower limits of R are 2.760510 K-ohm and 2.749490 K-ohm respectively