clc 
// Given that
alpha = 0 // Rake angle in degree
gama = 3 // Clearance angle in Degree
w = 1 // Maximum length of flank wear allowed in mm
gama_ = 7 // Increased clearance angle in Degree
// Sample Problem 8 on page no. 212
printf("\n # PROBLEM 4.8 # \n")
I_per = (((tand(gama_))-(tand(gama)))/tand(gama))*100
printf(" \n Percentage increase in tool life = %d percent.",I_per)

