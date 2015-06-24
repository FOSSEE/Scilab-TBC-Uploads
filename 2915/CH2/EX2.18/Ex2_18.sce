//Example 2.18
//To find the radius of circumscribed circle for triangle ABC
clc,clear

c=4 //side oposite to vertex C
a=2 //side opposite to vertex A
b=3 //side opposite to vertex B

cos_A = (c^2+b^2-a^2)/(2*c*b) //from law of cosines
A= acosd(cos_A)
diameter=(a/sind(A))
radius = diameter/2
printf('Radius of circumscribed circle = %.2f units \n\n',radius)

//To draw the triangle
printf('NOTE:\nPROCEDURE TO DRAW THE TRIANGLE ABC\n')
printf('Use a ruler to draw the longest side AB of length c = 4.\n')
printf('Use a compass to draw arcs of radius 3 and 2 centered at A and B respectively.\n')
printf('The intersection of the arcs is the vertex C.\n\n')

//To draw the circumscribed circle
printf('PROCEDURE TO DRAW CIRCUMSCRIBED CIRCLE\n')
printf('Draw the perpendicular bisectors of AB and AC.\n')
printf('Their intersection is the center O of the circle.\n')
printf('Use a compass to draw the circle centered at O which passes through A.')

