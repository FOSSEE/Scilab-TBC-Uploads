//Book Name:Fundamentals of Electrical Engineering
//Author:Rajendra Prasad
//Publisher: PHI Learning Private Limited
//Edition:Third ,2014

//Ex2_2.sce.

clc;
clear;
a1=2;b1=1;c1=5;d1=1;                        //these are the coefficient values of I1,I2,I3 and source obtained from loop ABDA in the given circuit 
a2=4;b2=-5;c2=-3;d2=0;                      //these are the coefficient values of I1,I2,I3 and source obtained from loop ABCA in the given circuit 
a3=4;b3=1;c3=-9;d3=0;                       //these are the coefficient values of I1,I2,I3 and source obtained from loop BCDB in the given circuit 

del=det([a1 b1 c1;a2 b2 c2;a3 b3 c3]);
del1=det([d1 b1 c1;d2 b2 c2;d3 b3 c3]);
del2=det([a1 d1 c1;a2 d2 c2;a3 d3 c3]);
del3=det([a1 b1 d1;a2 b2 d2;a3 b3 d3]);

I1=del1/del;                                 //Using Cramer's rule
I2=del2/del;                                //Using Cramer's rule
I3=del3/del;                                //Using Cramer's rule

printf("\n The current values are,")
printf("\n\t I1=%1.1f A",I1)
printf("\n\t I2=%1.1f A",I2)
printf("\n\t I3=%1.1f A",I3)
