clc
//initialisation of variables
W= 1 //hp
P= 69.4 //psia
V2= 3 //cu
V1= 1 //cu
//CALCULATIONS
Wb=  -W*33000
Wa= P*(V2-V1)*144
Q= Wa+Wb
//RESULTS
printf ('Total system work during the 1 minute period= %.f ft lb',Q)
