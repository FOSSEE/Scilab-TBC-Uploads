//Exa10
clc;
clear;
close;
disp("As spoilage occurs during process, its cost will be charged both to the complete production and the closing inventory.");
disp("    Element Units                Material     Labour     Overhead");
disp("                                   Kgs.         Kgs.        Kg.");
disp("                                   Rs.          Rs.         Rs.");
disp("Current process accoount          27000       50000       40000");
disp("Process cost per unit               2.5           5           4");
disp("Closing Inventory                125000        5000        4000");
disp("Cost of material transfered to the second process :");
Opening_Inventory=10000;//in Rs
Process_Cost=117500;//in Rs
Closing_Inventory=21500;//in Rs
disp(Opening_Inventory + Process_Cost - Closing_Inventory,"Cost of material transfered to the second process= Rs.")
disp(5000*2.5,"Material             =Rs. ");
disp(5000*5*20/100,"Labour               =Rs. ");
disp(5000*4*20/100,"Overhead             =Rs. ");
disp(5000*2.5+5000*5*20/100+5000*4*20/100,"Total= Rs. ")
disp("(b) It spoilage occurs at the end of the process, its cost will be charged only to the finished production and not to the closing inventory.");
disp("The calculation will be as follows : ");
disp("Effective Units                            Material     Labour     Overhead");
disp("From:     ")
disp("Opening inventory                                0        3000        3000");
disp("Current input                                 7000        7000        7000");
disp("Total complete units                          7000       10000       10000");
disp("Closing inventory                             5000        1000        1000");
disp("Effective units                              12000       11000       11000");
disp("Process cost                             Rs. 27500   Rs. 50000   Rs. 40000");
disp("Process cost per unit                         2.29        4.55        3.63");
disp("Closing inventory                                                      Rs.");
disp("Material    5000  x Rs.2.29        =11450");
disp("Labour      5000  x Rs.4.55 x 20%  =4550");
disp("Overhead    5000  x Rs.3.63 x 20%  =3630");
disp("                                   =Rs. 19630 ");
disp(10000+117500-19630,"Cost of materials transfered to second process= Rs. ");