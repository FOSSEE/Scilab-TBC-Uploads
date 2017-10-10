// Example 7_1
clc;funcprot(0);
// Given data
T_L=70.0;// °F
T_H=4000.0;// °F

// Solution
n_T_max=(1-((T_L+459.67)/(T_H+459.67)))*100;// The maximum possible thermal efficiency of this engine in %
printf('\nThe maximum possible thermal efficiency of this engine,(n_T)_max=%2.1f percentage',n_T_max);
