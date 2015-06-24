clc
//Initialization of variables
wA=53.5 //lb/ft^3
wA2=8.4 //kN/m^3
wB=78.8 //lb/ft^3
wB2=12.3 //kN/m^3
PB=30 //psi
PB2=200 //kN/m^2
AB=1.3 //ft
AB2=40/100 //m
BC=6.5 //ft
BC2=2 //m
CD=10 //ft
CD2=3 //m
//Calculations
PAbyGB=PB*144/wB - AB*13.55*62.4/wB - (BC+CD) + (AB+BC)*wA/wB
PA=PAbyGB*wB/144.
PAbyGB2=PB2/wB2 - AB2*13.55*9.81/wB2 - (BC2+CD2) + (AB2+BC2)*wA2/wB2
PA2=PAbyGB2*wB2
//Results
printf('English units')
printf("\n Final pressure = %.1f psi",PA)
printf('\n SI Units')
printf("\n Final pressure = %d kPa",PA2+1)
