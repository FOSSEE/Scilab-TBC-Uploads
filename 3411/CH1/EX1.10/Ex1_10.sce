//Example 1.10
clc();
clear;
//To find the diameter of the 20th dark ring
D4=0.4         //units in cm
D12=0.7         //units in cm
//As we have (D20^2-D4^2)/(D12^2-D4^2)=(4*16)/(4*8)
ans=(4*16)/(4*8)
D20_2=(ans*((D12)^2-(D4)^2))+(D4)^2          //units in cm^2
D20=sqrt(D20_2)                              //units in cm
printf("Diameter of the 20th dark ring is %.3fcm",D20)
