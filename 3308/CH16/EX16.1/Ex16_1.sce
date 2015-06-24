clc 
// Given that
d=1//in inch Diameter of the hole
T=(1/8)//in inch thickness of the sheet

// Sample Problem on page no. 396

printf("\n # Calculation of Punch Force# \n")

UTS=140000//in psi Ultimate Tensile Strength of the titanium alloy Ti-6Al-4V
L=3.14*d//total length sheared which is the perimeter of the hole
F=0.7*T*L*UTS
F1=F*4.448/(10^6)
printf("\n\n Extrusion force=%f MN",F1)

//Answer in the book is approximated to 0.17MN
