//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 11.26\n\n\n");
// Chapter 11 : Heat Transfer
// Problem 11.26  (page no. 603) 
// Solution

//From the table 11.7,
//For the oil side,a resistance(fouling factor) of 0.005 (hr*F*ft^2)/Btu can be used
//and for the water side,a fouling factor of 0.001 (hr*F*ft^2)/Btu can be used
//From problem 11.25,
U=40;//The coefficient of heat transfer of the unit //Unit:Btu/(hr*ft^2*F)
//therefore,
Roil=0.005; //unit:(hr*ft^2*F)/Btu //resistance at oil side
Rwater=0.001; //unit:(hr*ft^2*F)/Btu //resistance for water side
Rcleanunit=inv(U); //unit:(hr*ft^2*F)/Btu //resistance at clean unit
Roverall=Roil+Rwater+Rcleanunit; //unit:(hr*ft^2*F)/Btu //overall resistance
Uoverall=inv(Roverall); //Unit:Btu/(hr*ft^2*F) //The overall coefficient of heat transfer of the unit
//Because all the parameters are the same,the surface area required will vary inversely as U
A=569*(U/Uoverall); //A=569 ft^2 in the problem 11.25 //unit:ft^2  //The outside surface area
printf("The outside surface area required is %f ft^2",A);
