clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 12.4
//Caption : Program to Find the Heat of Formation of LiCl

//          Li + 0.5Cl2 --> LiCL(s)       (A)

//   LiCl(s) + 12H2O(l) --> LiCl(12H2O)   (B)

//Net Reaction
//Li + 0.5Cl2 +12H2O(l) --> LiCl(12H2O)   (Net)

//From Table C.4
Hf_A=-408610;//[J]
Hf_B=-33614;//[J]
Hf_Net=Hf_A+Hf_B;//[J]

disp('J',Hf_Net,'Heat of formation of LiCl in 12mol H2O at 298.15K is')

//End