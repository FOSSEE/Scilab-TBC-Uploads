//Determination of magnitude of forces and angle between them
//Assume F1=F then F2=2*F1
//condition 1 gives
//5*F^2+4*F^2*cosd(theta)=67600...(1)
//condition 2 gives
//5*F^2-4*F^2*cosd(theta)=32400...(2)
//Adding (1) and (2)
F=sqrt(10000)  //N
F1=F  //N
F2=2*F  //N
//put F1 and F2 in Equation (1)
theta=acosd(0.44)  //degree
printf("Magnitude of forces are :-\n F1=%.0f N\n F2=%.0f N",F1,F2)
printf("\nAngle between the forces is :-\n theta=%.1f degree",theta)
