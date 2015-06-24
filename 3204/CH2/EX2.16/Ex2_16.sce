//Initilization of variables
Soa=1000 //N (tension)
alpha=45 //degree //where alpha=(360/8)
theta=67.5 //degree //angle made by bar AO with AB &AH
//Calcultions
Sab=Soa*(sind(theta)/sind(alpha)) // N // Using law of sines
Sah=Sab //N
Sob=(Sab*sind(180-2*(theta)))/sind(theta) //N
//Results
clc
printf('The axial force in the bar AB is %f N \n',Sab) //Compression
printf('The axial force in the bar OB is %f N \n',Sob) //Tension
