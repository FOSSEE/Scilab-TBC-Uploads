//Exa11
clc;
clear;
close;
disp("Dr.                                   Process A A/c                             Cr.");
disp("                                     Amount                                  Amount");
disp("                                       Rs.                                     Rs.  ");
disp("To Material Consumed                   2000    By closing Stock                1000");
disp("To Labour                              3000    By Process B(o/p Transfered)    5000");
disp("To Profit(20% on transfer price)      *1000")
 disp("                                      6000                                    6000");
disp("");
disp("Dr.                                   Process B A/c                             Cr.");
disp("                                     Amount                                  Amount");
disp("                                       Rs.                                     Rs.  ");
disp("To Process A(Transfer of o/p)          5000    By closing Stock                2000          ")
disp("To Material                            3000    By Process C(o/p Transfered)   10000");
disp("To Labour                              2000");
disp("To Profit(20% on transfer price)      *2000")
disp("                                      12000                                   12000");
disp("");
disp("Dr.                                   Process C A/c                                  Cr.");
disp("                                     Amount                                       Amount");
disp("                                       Rs.                                          Rs.  ");
disp("To Process B(Transfer of o/p)         10000    By closing Stock                     3000          ")
disp("To Material                            1000    By Finished stock(o/p Transfered)   15000");
disp("To Labour                              4000");
disp("To Profit(20% on transfer price)      *3000")
disp("                                      18000                                        18000");
disp("") ;
disp("Finished Stock Accouont");
disp("                                     Amount                                  Amount");
disp("                                       Rs.                                     Rs.  ");
disp("To Process C(Output Recieved)         15000    By Sales                       18000          ")
disp("To Profit                              5000    By Closing Stock                2000");
disp("                                      20000                                   18000");