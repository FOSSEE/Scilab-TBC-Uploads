//Exa7
clc;
clear;
close;
disp("1. Statement of production units for June 2010:");
disp("                                  Units");
disp("Completed Units                   2500");
disp("(+)Closing work-in-process         500");
disp("                                  3000");
disp("(-)Opening work-in-process         400");
disp("New Units (Input)                 2600");
disp("");
disp("2. Computation of equivalent");
disp("                                          Units   Incomplete %   Materials   Labour   Overhead");
disp("(i)");
disp("W.I.P Inventory on 1st June(40% complete)");
disp("                                            400       60%           240        240      240");
disp("Add:Input                                  2600                    2600       2600     2600");
disp("                                           3000       20%          2840       2840     2840");
disp("Less: W.I.P Inventory on 30th June          500       40%           100        200      200");
disp("                                           2500                    2740       2640     2640");
disp("");
disp("Statement of cost per unit");
disp("                            Total Amoount Equivalents Cost per");
disp("                                (Rs.)       Units      Unit Rs.")
disp("Materials                        68500      2740        25.00");
disp("Labour                           79800      2640        30.23");
disp("Overhead                         21280      2640         8.06");
disp("                                169580                  63.29")
disp("");
disp("3. Process cost for the month of June 2010");
disp("                                              Amount      per unit");
disp("Materials(160 units i.e.,40% of 400 units)     3600        22.50");
disp("Labour(160 units i.e.,40% of 400 units)        3400        21.25");
disp("Overhead(160 units i.e.,40% of 400 units)      1000         6.25")
disp("                                               8000        50.00");
disp("");
disp("Put in process");
disp("Materials(2740 units)                         68500        25.00");
disp("Wages(2640 units)                             79800        30.23")
disp("Overheads(2640 units)                         21240         8.06");
disp("                                             169580        63.29");
disp("                     Total                   177580");
disp("");
disp("Analysis of Cost sheet (FIFO)");
disp("Cost of Units Completed and transfered     Units     Rate    Amount");
disp("                                         Equivalent   Rs.      Rs.")
disp("Work-in-progress-1st June(400 units)        160      50.00    8000");
disp("Materials for completing                    240      25.00    6000");
disp("Labour for completing                       240      30.23    7252");
disp("Overhead for completing                     240       8.06    1934");
disp("Cost of 400 units                                            23186");
disp("Put in process and completed (2100 units)             6329   132909");
disp("Cost of 2500 units                                           156095");
disp("Valuation of work in process- 30th june(500 units)");
disp("Materials                                   400      25.00    10000");
disp("Labour                                      300      30.23     9068");
disp("Overhead                                    300       8.06     2417 ")
disp("Cost of 500 units(W.I.P)                                      21485");
disp("                                      Total Process cost Rs. 177580")
disp("");
disp("Process Cost Account");
disp("                     Units   Cost per   Amount                      Units   Cost per   Amount");
disp("                              unit                                           unit");
disp("                               Rs.       Rs.                                  Rs.        Rs.  ");
disp("To W.I.P 1st June     400    50.00      8000    By finished          2500    62.44     156095");
disp("Materials            2600    25.00     68500    By stock Account");
disp("Labour                       30.23     79800    By W.I.P 30th June    500    42.97      21485");
disp("Overheads                     8.06     21280");
disp("                     3000             177580                         3000              177580 ");