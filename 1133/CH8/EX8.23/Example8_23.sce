//Example 8.23
clc
disp("Internal structure of 7490 ripple counter IC is as shown in fig. 8.50")
disp("")
disp("We know that, one IC can work as mod-10 (BCD) counter. Therefore, we need two ICs. The counter will go through states 0-19 and should be reset on state 20. i.e.")
disp("         QD  QC  QB  QA       QD  QC  QB  QA")
disp("         0   0   1   0        0   0   0   0")
disp("            7490(2)              7490(1)")
disp("")
disp("The diagram of divide-by-20 counter using IC 7490 is as shown in fig.8.51")
