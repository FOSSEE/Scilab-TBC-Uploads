clear;
clc;

//Caption: To verify that AND-OR topology is equivallent to NAND-NAND system
disp('In digital electronics we have to come across situations where we need to use an inpout with a bar but here we will denote as');
disp('X with a bar = Xb and X with two bars = Xbb');

//Solution
disp('We know that X =Xbb');
disp('For AND OR logic the output of AND and simultaneously neglecting the input to following OR does not change the logic');
disp('We have also neglected the output of the OR gate and at the same time have added an INVERTER so that logic is once again unaffected');
disp('AN OR gate neglected at each terminal is an an AND circuit');
disp('Since AND followed by an inverter is NAND ');
disp('Hencee the NAND NAND is equivallent to AND OR');

//end