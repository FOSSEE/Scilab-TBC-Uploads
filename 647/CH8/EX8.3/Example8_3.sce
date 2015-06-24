clear;
clc;

// Example: 8.3
// Page: 298

printf("Example: 8.3 - Page: 298\n\n");

// Solution

// From Example 8.2:

// For refrigerated space:
// Wnet = Ql/4.78 = 0.209*Ql;

// For freezer box.
// Wnet = Ql/3.89 = 0.257*Ql

percent = ((0.257 - 0.209)/0.209)*100;
printf("Increase in percentage of work output is %.2f %%",percent);