clear;
clc;

// Stoichiometry
// Chapter 5
// Energy Balances


// Example 5.56
// Page 312
printf("Example 5.56, Page 312 \n \n");

// solution

fi3 = 15505407
fi4 = 11395056
fi5 = fi3-fi4  // kJ/h
fi6 = 111.375*62.75*1000
fi7 = 1063379
fi8 = 5532.15*4.1868*(303.15-298.15)
fi9 = 9030.4*3.45*(323.15-298.15)
fi = fi5+fi6+fi8-fi7-fi9
printf(" Heat removal in the cooler = "+string(fi)+" kJ/h.")
