//Exa 8.1
clc;
clear;
close;
//given data :
//When i=0%
disp("When i = 0% :");
FC=4000;//in Rs.
i=0;//in % per annum
MC1=0;//in Rs.
disp("Tabulation to determine economic life : ");
disp("End of     Maintenance     Summation of     Avg cost of     Avg FC if     Avg total");
disp(" year      cost at end     maintenance      maintenance    replaced at    cost through");
disp("             of year         costs          through year    year given    year given");
disp("  A           B(Rs.)        C(Rs.)             D(Rs.)        E(Rs.)        F(Rs.)");
disp("  1            0                0                 0          4000          4000");
disp("  2          200              200               100          2000          2100");
disp("  3          400              600               200       1333.33       1533.33");
disp("  4          600             1200               300          1000          1300");
disp("  5          800             2000               400           800          1200");
disp("  6         1000             3000               500        666.67       1166.67");
disp("  7         1200             4200               600        571.43       1171.43");
disp("Economic life of the machine : 6 years");
disp("Column C summarizes the summation of maintenance costs for each replacement period. The value corresponding to any end of year in this column represents the total maintenance costs of using the equipment till the end of that year. It gives the Economic life of the machine : 6 years");

//When i=12%
disp("When i = 12% :");
i=12;//in % per annum
FC=4000;//in Rs.
disp("Tabulation to determine economic life : ");
disp("End of     Maintenance         P/F       PW as of begin   Summation of    PW of        A/P     Annual equi");
disp(" year      cost at end        12%         of year of         PW of      cumulative     12%     total cost");
disp("             of year           n          maintenance     maintenance   maintenance     n       of year");
disp("  A           B(Rs.)        C(Rs.)             D(Rs.)        E(Rs.)        F(Rs.)    G(rs.)      H(rs.)");
disp("  1            0           0.8929              0.00          0.00       4000.00     1.1200     4480.00");
disp("  2          200           0.7972            159.44        159.44       4159.44     0.5917     2461.14");
disp("  3          400           0.7118            284.72        444.16       4444.16     0.4163     1850.10");
disp("  4          600           0.6355            381.30        825.46       4825.46     0.3292     1588.54");
disp("  5          800           0.5674            453.92       1279.38       5279.38     0.2774     1464.50");
disp("  6         1000           0.5066            506.60       1785.98       5785.98     0.2432     1407.15");
disp("  7         1200           0.4524            542.88       2328.86       6328.86     0.2191     1386.65");
disp("  8         1400           0.4039            565.46       2894.32       6894.32     0.2013     1387.83");
disp("  9         1600           0.3606            576.96       3471.28       7471.28     0.1877     1402.36");
disp(" 10         1800           0.3220            579.60       4050.88       8050.88     0.1770     1425.00");
disp("Economic life of the machine : 7 years");
disp("For this problem, the annual equivalent total cost is minimum at the end of year 7. Therefore, the economic life of the equipment is 7 year.");
