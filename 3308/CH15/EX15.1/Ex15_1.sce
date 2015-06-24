clc 
// Given that
di=5//in inch Diameter of the round billet
df=2//in inch Diameter of the round billet after extrusion

// Sample Problem on page no. 372

printf("\n # Calculation of force in Hot Extrusion# \n")

//As 70-30 Brass is given, so the value of the extrusion constant is 35000psi from the diagram given in the book
k=35000//in psi
F=3.14*(di/2)^2*k*log((3.14*(di^2))/(3.14*(df^2)))
F1=F*4.448/(10^6)
printf("\n\n Extrusion force=%f MN",F1)

//Answer in the book is approximated to 5.5MN
