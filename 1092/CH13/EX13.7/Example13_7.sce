// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 13: RATINGS,SELECTION,AND MAINTENANCE OF ELECTRIC MACHINERY
// Example 13-7

clear; clc; close; // Clear the work space and console.

// Given data
P_o = 200 ; // Power rating of the test motor in hp
t1 = 5 ; // time duration in minutes for which test motor is operated at 200 hp 
t2 = 5 ; // time duration in minutes for which test motor is operated at 20 hp 
t3 = 10 ; // time duration in minutes for which test motor is operated at 100 hp 

// Calculation
rms_hp = sqrt( ( (200^2)*t1 + (20^2)*t2 + (100^2)*t3 )/(t1 + t2 + t3 + 10/3) );
// Horsepower required for intermittent varying load

// Display the results
disp("Example 13-7 Solution : ");
printf(" \n Horsepower required for intermittent varying load is : ");
printf(" \n rms hp = %.f hp \n ",rms_hp);

printf(" \n A 125 hp motor would be selected because that is the nearest larger");
printf(" \n commercial standard rating.This means that the motor would operate ");
printf(" \n with a 160 percent overload (at 200 hp) for 5 minutes,or 1/6th of ")
printf(" \n its total duty cycle.");
