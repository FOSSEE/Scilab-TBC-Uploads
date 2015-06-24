clc
//Given that
d1 = [5,-5,-4] // initial coordinate point of vector d
d2 = [6,2,-2] // final coordinate point of vector d
F1 = [10,-1,10] // first force acting on particle
F2 = [4,5,6] // second  force acting on particle
F3 = [-2,1,-9]  // third force acting on particle


// sample Problem 3  Page No. 177
printf("\n \n\n # Problem 3 # \n")
d = d2 - d1 // d is vector of displacement
F = F1 + F2 + F3 // F is resultant of all the force
printf("Standard formula used is W = F*d \n ")
W = F * d'
printf(" \n Total work done  is %d units ", W)
