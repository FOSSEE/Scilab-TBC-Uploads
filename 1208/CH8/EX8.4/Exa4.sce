//Exa4
clc;
clear;
close;
//given data :
OpeningStock=10000;//in Units
MaterialsCost=2250;//in Rs.
Wages=650;//in Rs.
Overhead=400;//in Rs.
UnitsIntroduced=40000;//in Units
MaterialsCost1=9250;//in Rs.
Wages1=4600;//in Rs.
Overhead1=3100;//in Rs.
disp("Calculation of Equivalent Production")
disp("(Given in form of table below)");
disp("                                            Units     Materials     Labour and Overhead");
disp("Opening Work-in-Process                     10000      10000              10000");
disp("Units started and finished                  20000      20000              20000");
disp("Closing work-in-process                     20000      20000              5000");
disp("Material 100% complete labour and overhead 25%")
disp("Effective Units                             50000      50000              35000")
disp("");
disp("Cost of Equivalent Units under the average cost method : ");
disp("Element                                 Opening Cost     Cost put in     Total Cost     Equivalent Production     Cost Per Unit");
disp("Material                                   2250              9250          11500                50000                 0.23 ");
disp("Wages                                      650               4600          5250                 35000                 0.15  ");
disp("Overhead                                   400               3100          3500                 35000                 0.10");
disp("Total");
disp("                                           3300              16950         20250                                      0.48")
//Valuation of work-in-process(20000 Units
//let material 100% complete = M1
M1=20000*0.3;//in Rs.
//let labour 25% complete = L1
L1=5000*0.15;//in Rs.
//let Overhead 25% complete = O1
O1=5000*0.10;//in Rs.
//Total T1
T1=M1+L1+O1;//in Rs
////cost of finished goods
// let material M2, Labour L2 and Overgead O2
M2=30000*0.30;//in Rs.
L2=30000*0.15;//in Rs.
O2=30000*0.10;//in Rs.
//Total T2
T2=M2+L2+O2;//in Rs.
disp("");
disp("Process account : ");
disp("Particulars                            amount     Particulars                         amount");
disp("Opening stock                          3000      completed and transfered             14400 ");
disp("Material                               9250      closing stock(work-in-process)       5850");
disp("Wages                                  4600");
disp("Overhead                               3100");
disp("                                       20250                                          20250");




