//Example 16_5
clc();
clear;
//To find the work done in carrying a proton and for an electron
q=1.6*10^-19 //Units in C
vab=9          //Units in V
work=q*vab      //Units in J
printf("The work done in carrying proton is=")
disp(work)
printf("Joules\n")
q=-1.6*10^-19 //Units in C
work=q*vab      //Units in J
printf("The work done in carrying electron is=")
disp(work)
printf("Joules\n")
