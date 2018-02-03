//Electric Power Generation, Transmission and Distribution by S.N.Singh
//Publisher:PHI Learning Private Limited
//Year: 2012 ; Edition - 2 
//Example 15.1
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;


D=2;                                        //Conductor diameter in cm
l=40;                                       //Length of lay in cm
n=1;                                        //Strand of layer one
l1=sqrt(l^(2)+(%pi*(2*n+1)*D)^(2));         //Length is a strand of layer one in cm
Tl1=l+6*l1;                                 //Total length of strands in cm
Tl2=7*l;                                    //Total length of strands,Not spiraled in cm
W=((Tl1-Tl2)/Tl2)*100;                      //Weight increased in percentage
R1=1/l+(6/l1);
R2=7/l;
R=(R2/R1)*100;                              //Change in resistance in percentage
R1=R-100;                                   //Increased resistance in percentage


printf("\nThe increase in weight due to spiraling of the conductor is %.2f percentage",W);
printf("\nThe increase in resistance due to spiraling of the conductor is %.1f percentage",R1);











