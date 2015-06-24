clc 
// Given that
L=20//in mm Final length of the ceramic part
//Linear shrinkage during drying and firing is 7% and 6% respectively
Sd=0.070//Linear shrinkage during drying
Sf=0.06//Linear shrinkage during firing

// Sample Problem on page no. 466

printf("\n # Dimensional changes during the shaping of ceramic components # \n")

//part (a)

Ld=L/(1-Sf)//dried length
Lo=(1+Sd)*Ld//initial length
printf("\n\n Initial Length=%f mm",Lo)

//Answer in the book is approximated to 22.77mm

//part(b)

Pf=0.03//Fired Porosity
r = (1-Pf)// Where r = Va/Vf
R = 1/((1-Sf)^3)// Where R = Vd/Vf
Pd = (1-r/R)
printf("\n\nDried porosity is %d percent",Pd*100)

