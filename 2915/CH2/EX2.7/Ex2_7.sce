//Example 2.7
//To determine solution of a triangle when 3 sides are given
clc,clear

c=6 //side oposite to vertex C
a=2 //side opposite to vertex A
b=3 //side opposite to vertex B

cos_A = (b^2+c^2-a^2)/(2*c*b) //from law of cosines
printf('cos(A)=%.3f as calculated\n',cos_A)
printf('But magnitude of cos(A) should always be less than 1. Hence NO SOLUTION exists\n\n')

printf('Note: We observe that a+b < c. But sum of any 2 sides should always exceed third side.')
printf('\nHence this triangle is impossible.')
