//Calculate current in different parts of winding of autotransformer//Chapter 3
//Example 3.32
//page 240
clear;
clc;
disp("Example 3.32")
V1=230;                    //primary voltage of auto-transformer
V2=75;                     //secondary voltage of auto-transformer
r=(V1/V2);                  //ratio of primary to secondary turns
I2=200;                    //load current in amperes
I1=I2/r;
printf("Primary current,I1=%fA",I1);
printf("\nLoad current,I1=%fA",I2);
printf("\ncirrent flowing through the common portion of winding=%fA",(I2-I1));
printf("\nEconomy in saving in copper in percentage=%fpercent",(100/r));

