clear ;
clc;
// Example 26.1
printf('Example 26.1\n\n');
//page no. 804
// Solution 

printf('Table to carry out degree of freedom analysis:\n');
// Number of variables involved
printf('\nI. Number of variables involved.\n');
printf('    Species in F1                                                                     1 \n');
printf('    Species in F2                                                                     2\n');
printf('    Specie in F3                                                                      5\n');
printf('    Total stream flows                                                                3\n');
printf('    Stream temperatures                                                               3\n');
printf('    Stream pressures                                                                  3 \n');
printf('    Q                                                                                 1 \n');
printf('    Extent of reactions                                                               2\n');
printf('\__________________________________________________________________________________________\n');
printf('  Total                                                                              20\n');
printf('\n\nII. Number of equations and specifications.\n');
printf('    Independent species material balances                                             6\n');
printf('    Sum of species in each of the two streams                                         2 \n');
printf('    Energy balance                                                                    1\n');
printf('    Total stream flows                                                                2\n');
printf('    Species values(CO)                                                                1\n');
printf('    Pressures                                                                         3 \n');
printf('    Temperatures                                                                      2 \n');
printf('    O2 to N2 ratio specified in F2                                                    1 \n');
printf('    Complete reaction, hence the extent of reaction is implied to both reactions      2\n');
printf('\___________________________________________________________________________________________\n');
printf('  Total                                                                              20\n');
printf('\n Therefore, by analysing the above table it is clear that degrees of freedom of system is (20 - 20) = 0 \n');