//Example 2.16
//To determine area of triangle when 3 sides are given
clc,clear

c=0.0000029 //side oposite to vertex C
a=1000000 //side opposite to vertex A
b=999999.9999979 //side opposite to vertex B

s= (a+b+c)/2  //semi perimeter
area_K = sqrt(s*(s-a)*(s-b)*(s-c)) //using herons formula
printf('Area of triangle ABC = %.3f square units\n\n',area_K)

printf('Note:\n')
printf('In calculators like TI-83 plus, due to rounding off etc s will be 1000000\n')
printf('Therefore (s-a) is zero. And area will be zero according to herons formula\n')
printf('Due to large number of digits in scilab,(s-a) is not zero. Thus, area is non-zero above.')
