clc
//initialisation of variables
clear
R= 1.986 //cal deg^-1 mole^-1
cv1= 0.392 //cal deg^-1 mole^-1
cv2= 0.004 //cal deg^-1 mole^-1
cv3= 0.003 //cal deg^-1 mole^-1
cv4= 1.265 //cal deg^-1 mole^-1
cv5= 0.247 //cal deg^-1 mole^-1
cv6= 0.225 //cal deg^-1 mole^-1
//CALCULATIONS
Cv = 3*R+cv1+cv2+cv3
Cv1= 3*R+cv4+cv5+cv6
//RESULTS
printf ('Total heat capacity = %.2f cal deg^-1 mole^-1',Cv)
printf ('\n Total heat capacity = %.2f cal deg^-1 mole^-1',Cv1)
