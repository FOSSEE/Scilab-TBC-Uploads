clc,clear
//example 1.1
//To determine unknown angle in 3 given triangles

//Triangle ABC
A = 35//angle at vertex A in degrees 
C = 20//angle at vertex C in degrees
B=180- (A+C) //unknown angle
printf('Triangle ABC: B = %.0f degree\n',B)

//Triangle DEF
E = 53//angle at vertex E in degree
//F = 90, DEF is right triangle
//So angles E and D are complimentary
D = 90- E //unknown angle
printf(' Triangle DEF: D = %.0f degree\n',D)

//Triangle XYZ
sum_multiple= 1+3+1 //for solvong for alpha
alpha = 180/ sum_multiple
X= alpha //unknown angle
Y= 3* alpha //unknown angle
Z= alpha //unknown angle
printf(' Triangle XYZ: X=%.0f degree Y=%.0f degree Z=%.0f degree',X,Y,Z)
