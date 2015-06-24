// sum 9-8
clc;
clear;
sigyp=460;
FOS=2;
Ts=0.577*sigyp/FOS;
At=245;
r=100;
P=Ts*At/1.453*10^-3;
// Open prob9p8.txt file
fid = mopen('prob9p8.txt', "w");
// error message
  if (fid == -1)
    error('cannot open file for writing');
  end
  
 mfprintf(fid, "Problem 9.8 Solution: \nThe eccentric load is %f N       ",P);
 
  mclose(fid);
  // printing data in scilab o/p window
  printf("P is %0.3f kN      ",P);
  
  //Value of thousandth place of eccentric load, 'P' is misprinted in the book. 