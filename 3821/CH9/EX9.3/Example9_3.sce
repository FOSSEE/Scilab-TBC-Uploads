///Chapter 9 Law Of Thermodynamics
///Example 9.3 Page No:166
/// Find Magnitude and direction of the third heat interation
///input data
clc;
clear;
W1=-20;                  //Work interaction to the fluid in KJ
W2=42;                   //Work interaction from the fluid in KJ
Q1=85;                   //Heat interaction to the fluid in KJ
Q2=85;                   //Heat interaction to the fluid in KJ
Q3=-50;                  //Heat interaction from the fluid in KJ

///Calculation
W3=((Q1+Q2+Q3)-(W1+W2)); //Magnitude and direction of the third heat interation


///Output
printf('Magnitude and direction of the third heat interation=%f KJ \n',W3);
