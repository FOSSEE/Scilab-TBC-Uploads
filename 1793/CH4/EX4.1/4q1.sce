clc
//initialisation of variables
V1= 24.6 //cm^3
V2= 15.9 //cm^3
M1= 44 //g
M2= 30.1 //g
W= 1 //g/cm^3
//calculations
SL= (((M1-M2)/M2)*100)-(((V1-V2)/M2)*W*100)
//results
printf ('shrinkage limit of the soil = % 2f ',SL)

