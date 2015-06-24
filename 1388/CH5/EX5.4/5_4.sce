clc
//initialisation of variables
P= 408 //mm of Hg
P1= 141 // mm of Hg
p= 60
//CALCULATIONS
P2= P*(100-p)/100
P3= P1*p/100
N= P2/(P2+P3)
P4= P2+P3
//RESULTS
printf (' mole fraction = %.3f ',N)
printf (' \n total pressure = %.f mm of Hg',P4)
