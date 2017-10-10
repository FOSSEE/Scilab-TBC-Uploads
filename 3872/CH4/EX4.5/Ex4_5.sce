// Book - Power System: Analysis & Design 5th Edition
// Authors - J. Duncan Glover, Mulukutla S. Sharma, Thomas J. Overbye
// Chapter - 4 : Example 4.5
// Scilab Version 6.0.0 : OS - Windows


clc;
clear;

T = 795000;                                         // Size of the Conductor in Circular mils (cmil)
S = 0.40;                                           // Spacing between Conductors in metre
l = 10;                                             // Spacing between the Adjacent Conductors in metres
f = 60;
Xa4=101;                                            // Inductive reactance of Example 4.4 in Ohms

r = 0.0375;                                         // Geometric Mean Radius at 60Hz in feet, from the table A.4
Ds = r*(1/3.28);                                    // Solid Cylinderical Conductor value in metres
Dsl = sqrt(Ds*S);                                   // For the two conductor bundle GMR in metres 
Deq = nthroot([10*10*20], 3);                       // Eqivalent GMR of a Conductor in metres from Ex 4.4
La = ((2*10^-7)*(log(Deq/Dsl))*(1000*200));         // Average Inductance of Phase a in Henry
Xa = (2*%pi*f*La);                                  // Inductive Reactance of Phase a in Ohms

dif=100-(Xa/Xa4)*100;

printf('Average Inductance of Phase is  (La) = %0.3f  H', La);
printf('\nInductive Reactance of Phase is  (Xa) = %0.1f  Ohm', Xa);
printf('\nThe inductive reactance is %0.0f percentage less than that of example 4.4',dif );
