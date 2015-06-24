//scilab 5.4.1
clear;
clc;
printf("\t\t\tProblem Number 11.20\n\n\n");
// Chapter 11 : Heat Transfer
// Problem 11.20  (page no. 588) 
// Solution

//The upper temperature is given as 120 F and the temperature difference is 
Ti=120; //Inside temperature //unit:fahrenheit
To=70; //Outside temperature //unit:fahrenheit
deltaT=120-70; //unit:fahrenheit //Change in temperature
//Using figure 11.28, 
hrdash=1.18; //factor for radiation coefficient //Unit:Btu/(hr*ft^2*F)
Fe=1; //Emissivity factor to allow for the departure of the surfaces interchanging heat from complete blackness;Fe is a function of the surface emissivities and       configurations
FA=0.79; //geometric factor to allow for the average solid angle through which one surface "sees" the other
hr=Fe*FA*hrdash; //The radiation heat-transfer coefficient for the pipe //Unit:Btu/(hr*ft^2*F)
printf("The radiation heat-transfer coefficient for the pipe is %f Btu/(hr*ft^2*F)\n",hr);

//As a check,Using the results of problem 11.17,
printf("As a check,using the results of problem 11.17,\n");
D=3.5/12; //3.5 inch = 3.5/12 feet//Unit:ft //Outside diameter
L=5; //Length //Unit:ft //From problem 11.10
A=(%pi*D)*L;  //Area //Unit:ft^2 
Q=214.5; //heat loss //Unit:Btu/hr
hr=Q/(A*deltaT); //The radiation heat-transfer coefficient for the pipe //Unit:Btu/(hr*ft^2*F) //Newton's law of cooling
printf("The radiation heat-transfer coefficient for the pipe is %f Btu/(hr*ft^2*F)\n",hr);
