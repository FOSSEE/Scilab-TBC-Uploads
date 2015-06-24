clear ;
clc;
// Example 24.2
printf('Example 24.2\n\n');
//page no. 725
// Solution 

printf('Table to carry out degree of freedom analysis:\n');
// Number of variables involved
printf('\nI. Number of variables involved.\n');
printf('\n  For materials:\n');
printf('        Hot gas : 4 component flows, T, and p                     6 \n');
printf('        Cool gas : 4 component flows, T, and p                    6\n');
printf('        Water in : 1 component flow, T, and p                     3\n');
printf('        Water out : 1 component flow, T, and p                    3\n');
printf('\n  Energy:\n');
printf('        Q and W                                                   2 \n');
printf('        H,KE and PE associated with each stream flow             12 \n');
printf('\_______________________________________________________________________\n');
printf('  Total                                                          32\n');
printf('\n\nII. Number of equations and specifications.\n');
printf('\n  Specified values:\n');
printf('        Hot gas : 4 component flows, T, and p                     6 \n');
printf('        Cool gas : T, and p                                       2\n');
printf('        Water in : T, and p                                       2\n');
printf('        Water out : T, and p                                      2\n');
printf('\n  Specified in the energy balance:\n');
printf('        Q and W                                                   2 \n');
printf('        KE and PE associated with each of 4 stream flow           8 \n');
printf('\n  Material balance:             \n');
printf('        4 species balances plus water                             5 \n');
printf('\n  Energy balance:                                                 1\n');
printf('\n  H in each stream is a function of specified T and p             4\n');
printf('\_______________________________________________________________________\n');
printf('  Total                                                          32\n');
printf('\n Therefore, by analysing the above table it is clear that degrees of freedom of system is (32 - 32) = 0 \n');