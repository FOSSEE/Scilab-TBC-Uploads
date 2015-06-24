clc
//initialisation of variables
P= 15 //psia
T= 80 //F
m= 3 //lb
P1= 25 //psia
T1= 75 //F
//CALCULATIONS
r= (P*(460+T1))/(P1*(T+460))
m2= m/(1-r)
V2= (m2*55.16*(460+T1))/(P1*144)
//RESULTS
printf ('Volume of the apparatus= %.1f cu ft',V2)
