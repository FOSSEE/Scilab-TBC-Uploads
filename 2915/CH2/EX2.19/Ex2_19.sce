//Example 2.19
//To determine radius of inscribed circle ABC
clc,clear

c=4 //side oposite to vertex C
a=2 //side opposite to vertex A
b=3 //side opposite to vertex B

s= (a+b+c)/2  //semi perimeter
radius_r = sqrt((s-a)*(s-b)*(s-c)/s) 
printf('Radius of inscribed circle is %.3f units= sqrt(5/12)units ',radius_r)
printf('\n\nNote:To obtain inscribed circle:\n(1)Intersect perpendicular bisectors of A and B\n')
printf('(2)Point of intersection is the centre of circle\n')
printf('(3)The radius is 0.645 as caculated above\n')
printf('(4)Using a compass draw a circle with this centre\n')
