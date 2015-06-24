// Example 3.4, page no-164
clear
clc

L=20
W=2000
db=0.02
Wb=100
dG=0.5
S=L/(2*W*db+Wb*dG)
printf("S = %.3f rad/g",S)

fi=0.2
DeltaW=fi*3.14/(180*S)
printf("\nDeltaW = %.3f g",DeltaW)
