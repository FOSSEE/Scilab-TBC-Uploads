// Exa 13.5

clc;
clear all;

// Given data

Input=6.3; // V
Output=5.2; // V
Range= 9.5; // inches

// Solution

// 0.5 inches core displacement produces 5.2 V
// Therefore, a 0.45 inch movement produces voltage as
V1=0.45*5.2/0.5; 
// Similarly - 0.30 inches core movement produces voltage as
V2=-0.30*-5.2/(-0.5); // V
// Also -0.25 inch core movement produces voltage as
V3=-0.25*-5.2/(-0.5); // V

printf('The core movement of 0.45 inch produces voltage of %.2f V  and\n movement of -0.30 inch produces voltage of %.2f V \n' ,V1,V2);
printf(' The core movement of -0.25 inch from the centre produces voltage of %.1f V \n',V3);


