//chapter 2
//example 2.7
//page 49
clear;
clc ;
//given 
trr1=10;//in ns for 1N915
trr2=3;//in ns for 1N917
//finding maximum operating frequency for 1N915
fmax1=1/(10*trr1)*10^3;//in MHz

//finding maximum operating frequency for 1N917
fmax2=1/(10*trr2)*10^3;//in MHz

printf('maximum operating frequency for 1N915=%d MHz\n',fmax1);
printf(' maximum operating frequency for 1N917=%d MHz',fmax2);
