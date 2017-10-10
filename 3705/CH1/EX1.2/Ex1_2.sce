
clear//

//Variable Declaration
Ay=40 //Vertical Reaction at A in kN
Hy=60 //Vertical Reaction at H in kN
Hx=0 //Horizontal Reaction at H in kN
y=3 //Height in m
x=5 //Distance in m
p=4 //Panel distance in m
A=900 //Area of the member in mm^2
P_C=30 //Force at point C in kN

//Calculation
//Part 1
//Applying summation of forces in the x and y direction and equating to zero
P_AB=(-Ay)*(x*y**-1) //Force in member AB in kN
P_AC=-(p*x**-1*P_AB) //Force in member AC in kN
//Using stress=force/area
S_AC=(P_AC/A)*10**3 //Stress in member AC in MPa (T)

//Part 2
//Sum of moments about point E to zero
P_BD=(Ay*p*2-(P_C*p))*y**-1 //Force in memeber AB in kN (C)
S_BD=(P_BD/A)*10**3 //Stress in member in MPa (C)

//Result
printf("\n The Stress in member AC is %0.1f MPa (T)",S_AC)
printf("\n The Stress in member BD is %0.1f MPa (C)",S_BD)
