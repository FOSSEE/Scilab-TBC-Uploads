clc
//initialisation of variables
t= 3 //sec
P0= 200 //mm
k= 17.3 //mm/sec
P1= 104 //mm
//CALCULATIONS
P= P0-k*t
P2= P+P1
//RESULTS
printf (' Pressure= %.f mm of Hg',P2)
