clear ;
clc;
// Example 17.6
printf('Example 17.6\n\n');
//Page no. 529
// Solution 

P =  760 ;// Pressure -[ mm of Hg]
// Get vapour pressure of n-heptane from Perry, 40 mm of Hg
vp = 40 ;// vapour pressure of n-heptane-[mm of Hg]

// Use the 2nd relation given in problem to find K
K = 10^((log10(vp/P)-0.16)/1.25) ;

// Get t using the 1st relation in the question
// For t_half
x = 0.5 ;// mole fraction after  t_half
x0 = 1 ;// initial mole fraction 
t_half = (log(x/x0))/(-K);// Time required to reduce the concentration to one-half-[min]
printf('Time required to reduce the concentration to one-half is %.1f min. \n',t_half);