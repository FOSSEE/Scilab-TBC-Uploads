clc
//Initialization of variables
T=2000 //K
Tr=3340 //K
//calculations
disp("From fig 8.2")
cvrot=0.85
cvtra=1.5
cvvib=1
cv=cvtra+cvrot+cvvib
//results
printf("Cv total = %.2f R",cv)
