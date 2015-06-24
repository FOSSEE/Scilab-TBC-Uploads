clear;
clc;
disp('Example 8.5');

//  aim : To determine
//   the volume of the air required 

//  Given values
H2 = .45;// volume fraction of H2
CO = .40;// volume fraction of CO
CH4 = .15;// volume fraction of CH4

//  solution
V = 2.38*(H2+CO)+9.52*CH4;// stoichimetric volume of air, [m^3]

mprintf('\n The volume of air required is  =  %f  m^3/m^3 fuel\n',V);

// Result in the book is misprinted

// End

