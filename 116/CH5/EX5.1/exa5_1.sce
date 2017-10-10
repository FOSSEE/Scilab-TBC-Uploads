
 
//Example 5.1
 
//Page243
 
//Refer to table 5.2 on page236
 
disp('From the table, space expansion factor of 0.234 is 0.002. Hence the utilization of each interstage is given by')
 
0.1/0.234

p=1-[(1-0.427)^2]// probability that one of two links in series is busy

disp('Therefore, the expected number of paths to be tested are,')
 
Np=[1-(0.672)^15]/(1-0.672)
 
//Result
 
//Only 3 of the 15 paths should be tested before an idle path is found