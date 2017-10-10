//Example 9.7 Output Consistent Partition
clc; //clears the console window
clear; //clears the variable browser
disp("Different hardware requirements based on different state assignments on Page No. 9-12");
disp("First assignment for A,B,C,D,E are 000,001,010,011,100");
disp("z = q2 + q3");
disp("D1 = xq1 + xq3");
disp("D2 = x''q1''q2'' + xq1''q3''");
disp("D3 = x''q2q3 + x''q1 + zq1''q3''");
disp("First assignment for A,B,C,D,E are 000,001,011,111,110");
disp("Second Assignment ");
disp("z = q3");
disp("D1 = x");
disp("D2 = x + q2'' ");
disp("D3 = x''q1 + x''q2'' + {q2''q3'' or q1''q3'' } + xq1''q2");
disp("Since the second assignment results in reduced output expression this partition is called as output-consistent partition")
