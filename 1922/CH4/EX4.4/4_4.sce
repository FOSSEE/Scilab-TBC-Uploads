clc
clear
//Initialization of variables
s1=7.096 //kJ/kg K
s2=7.915  //kJ/kg K
s3=7.16  //kJ/kg K
s4=7.014  //kJ/kg K
s5=6.999  //kJ/kg K
//calculations
dsa=s2-s1
dsb=s3-s2
dsc=s4-s3
dsd=s5-s4
dse=s1-s5
dstotal=dsa+dsb+dsc+dsd+dse
//results
printf("Change in entropy in process a =%.3f  kJ/kg K",dsa)
printf("\n Change in entropy in process b =%.3f  kJ/kg K",dsb)
printf("\n Change in entropy in process c =%.3f  kJ/kg K",dsc)
printf("\n Change in entropy in process d =%.3f  kJ/kg K",dsd)
printf("\n Change in entropy in process e =%.3f  kJ/kg K",dse)
printf("\n Change in entropy in total process  =%.3f  kJ/kg K",dstotal)
