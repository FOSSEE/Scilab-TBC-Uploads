//Example 2.12
//To determine if a triangle can be formed with given dimension
clc,clear

c=9 //side oposite to vertex C
a=6 //side opposite to vertex A
b=7 //side opposite to vertex B

A=55 //angle at vertex A
B=60 //angle at vertex B
C=65 //angle at vertex C
printf('Sum of angles=180\n')
printf('Smallest and largest sides are opposite to smallest and largest angle respectively\n\n')

LHS = (a+b)/c
RHS = cosd((A-B)/2)/sind(C/2)
printf(' LHS =  (a+b)/c               = %.2f\n',LHS)
printf(' RHS =  cos((A-B)/2)/sin(C/2) = %.2f\n\n',RHS)

printf('As we can see, LHS is not equal to RHS.\ni.e.Mollweides equation is not holding true.\n')
printf('THE TRIANGLE IS NOT POSSIBLE WITH GIVEN DIMENSIONS')
