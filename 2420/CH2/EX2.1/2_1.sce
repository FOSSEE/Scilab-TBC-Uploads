clc
clear
//Initialization of variables
x1=0.135
x2=0.056
veca=[32.5 48.4 5.6 13.5]
B1=11788
//calculations
vecb=veca/(1-x1)
vecc=veca/(1-x1-x2)
B2=B1/(1-x1)
B3=B1/(1-x1-x2)
vecb(4)=0
vecc(3)=0
vecc(4)=0
//results
printf("In Moisture free case, ")
format('v',6);vecb
disp(vecb)
printf("In Moisture and Ash free case, ")
format('v',6);vecc
disp(vecc)
printf("Energy in Moisture free case  = %d Btu per lb",B2)
printf("\n Energy in Moisture and ash free case  = %d Btu per lb",B3)
