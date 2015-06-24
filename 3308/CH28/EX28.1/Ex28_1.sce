clc 
// Given that
t=1//in mm thickness of chip
I=5000//in Ampere current
T=0.1//in sec
d=5//in mm diameter of electrode


// Sample Problem on page no. 805

printf("\n # Heat Generated in Spot Welding # \n")

//It is assumed in the book that effective restiance = 200 micro ohm
R=200*(10^-6)
H=(I^2)*R*T

printf("\n\n Heat Generated = %d J",H)

// It is assumed in the book that 
V=30//in mm3 volume
D=0.008//in g/mm3 density
M=D*V
//Heat required to melt 1 g of steel is about 1400J
m1=1400*M
printf("\n\n Heat Required to melt weld nugget = %d J",m1)

m2=H-m1
printf("\n\n Heat Dissipitated into the metal surrounding the nugget = %d J",m2)






