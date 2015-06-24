// Example1_15_pg33.sce
// To find the load loss of transformer
// Theory of Alternating Current Machinery by Alexander Langsdorf
// First Edition 1999, Thirty Second reprint
// Tata McGraw Hill Publishing Company
// Example in Page 33


clear; clc; close;

// Given data
Total_Culoss1 = 630; // Total Copper Loss at 20degree celcius, watts
TrueCopper_loss1 = 504; // Copper loss due to True Ohmic resistance at 20degree celcius, watts
temp1 = 20; // Temperature, degree celcius
temp2 = 75; // Temperature, degree celcius

// Calculations
eddy_loss1 = Total_Culoss1 - TrueCopper_loss1; // Eddy Current loss at 20 degree celsius, watts
TrueCopper_loss2 = TrueCopper_loss1 * (temp2 + 234.5) / (temp1 + 234.5); // True Copper loss at 75 degree celcius, watts
eddy_loss2 = eddy_loss1 * (temp1 + 234.5) / (temp2 + 234.5);// Eddy Current loss at 75 degree celsius, watts
load_loss = TrueCopper_loss2 + eddy_loss2; // Load loss at 75 degree celsius, watts

printf("Eddy Current loss at 20 degree celcius = %.0f watts\n", eddy_loss1);
printf("True Copper loss at 75 degree celcius = %.0f watts\n", TrueCopper_loss2);
printf("Load loss at 75 degree celcius = %.0f watts", load_loss);

// Result
// Eddy Current loss at 20 degree celcius = 126 watts
// True Copper loss at 75 degree celcius = 613 watts
// Load loss at 75 degree celcius = 717 watts 
