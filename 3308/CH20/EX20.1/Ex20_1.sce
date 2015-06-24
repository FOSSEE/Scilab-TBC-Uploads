clc 
// Given that
to=0.005//in inch depth of cut
V=400//in ft/min cutting speed
X=10//in degree rake angle
w=0.25//in inch width of cut
tc=0.009//in inch chip thickness
Fc=125//in lb Cutting force
Ft=50//in lb thrust force

// Sample Problem on page no. 548

printf("\n # Relative Energies in cutting # \n")

r=to/tc//cutting ratio
R=sqrt((Ft^2)+(Fc^2))
B=acosd(Fc/R)+X//friction angle
F=R*sind(B)
P=((F*r)/Fc)*100
printf("\n\n Percentage of total energy going into overcoming friction =%d pecrent",P)

//Answer in the book is approximated to 32 due to approximation in calculation of R and B
