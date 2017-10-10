
clear//

//Variable Decelration
A_AC=0.25 //Cross Sectional Area in square inch
Load=2000 //Load at point C in lb
E=29*10**6 //Modulus of elasticity in psi
theta=(%pi*40)/180 //Angle in radians
L_BC=8 //Length in ft

//Calculations
//Using sum of forces 
P_AC=Load/sin(theta) //Force in cable AC in lb
L_AC=(L_BC*12)/cos(theta) //Length of cable AC in in

delta_AC=(P_AC*L_AC)/(E*A_AC) //elongation in inches

delta_C=delta_AC/sin(theta) //displacement of point C in inches

//Result
printf("\n The displacement of point C is %0.4f in",delta_C)
