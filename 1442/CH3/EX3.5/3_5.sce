clc
//initialisation of variables
W= 5 //kJ
Q= 23 //kJ
Q1= -50 //kJ
W1= 0 //kJ
//CALCULATIONS
E1= Q-W
E2= Q1-W1
E3= -(E1+E2)
W3= -E3
//RESULTS
printf ('energy change in process 1 = %.f kJ',E1)
printf ('\n energy change in process 2 = %.f kJ',E2)
printf ('\n energy change in process 3 = %.f kJ',E3)
printf ('\n Work in third process = %.f kJ',W3)
