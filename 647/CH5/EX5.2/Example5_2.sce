clear;
clc;

// Example: 5.2
// Page: 150

printf("Example: 5.2 - Page: 150\n\n");

// Solution

//*****Data*****//
Th = 810;// [K]
Tl = 300;// [K]
//*************//

// Solution (a)
eta = (Th - Tl)/Th;
printf("(a) The efficiency of the heat engine is %.1f %%\n",eta*100);

// Solution (b)
Th = 1366;// [K]
Tl = 300;// [K]
eta = (Th - Tl)/Th;
printf("(b) The efficiency of the heat engine is %.1f %%\n",eta*100);

// Solution (c)
Th = 810;// [K]
Tl = 344;// [K]
eta = (Th - Tl)/Th;
printf("(c) The efficiency of the heat engine is %.1f %%\n",eta*100);