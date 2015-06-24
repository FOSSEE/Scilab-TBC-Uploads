clc 
// Given that
W=400//in mm Lateral(width) Dimension of a plastic shopping bag 

// Sample Problem on page no. 484

printf("\n # Blown Film # \n")

//part(a)

P=2*W//in mm Perimeter of bag
D=P/3.14//in mm blown diameter calculated from Permeter=3.14*diameter
//Given in this process, a tube is expanded to form 1.5 to 2.5 in times the extrusion die diameter, so take maximum value 2.5
Dd=D/2.5//Extrusion die diameter
printf("\n\n Extrusion Die Diameter =%d mm",Dd)

//Answer in the book is approximated to 100mm

//part(b) is theoritical
