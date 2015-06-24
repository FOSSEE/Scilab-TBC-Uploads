clear;
clc;

// Example: 5.1
// Page: 150

printf("Example: 5.1 - Page: 150\n\n");

// Solution

//*****Data*****//
Th = 550 + 273;// [K]
Tl = 27 + 273;// [K]
//************//

// The theoretical efficiency of a heat engine is given by:
// eta = Net Work Output/Net Work Input
// eta = Wnet/Qin
// eta = (Qin - Qout)/Qin = (Th - Tl)/Th
eta = (Th - Tl)/Th;
printf("The theoretical efficiency of heat engine is %.1f %%",eta * 100)