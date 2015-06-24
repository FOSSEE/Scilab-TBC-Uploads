clear
clc
//to find time required by body to come halfway

// GIVEN:
//refer to figure 17-15 from page no. 385
//from the equation given
//radius of reference circle
r = 0.35//in m
//angular speed
omega = 8.3//in rad/s

// SOLUTION
//refer to problem 17-5
//angle turned to come halfway
wt = 60//in degree
//time required by body to come halfway
t = ((wt*%pi)/180)/omega//in seconds //taking angle in radians

printf ("\n\n Angle turned to come halfway wt = \n\n %2i degree",wt)
printf ("\n\n Time required by body to come halfway t = \n\n %.2f seconds",t)
