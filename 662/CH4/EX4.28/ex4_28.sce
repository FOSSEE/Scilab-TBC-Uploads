            //Example 4.28
//use of flags with unsigned decimal, octal and hexadecimal numbers

i = 1234;
j = oct2dec('1777');
k = hex2dec('a08c');
printf(":%8u %8o %8x:\n\n", i, j, k);
printf(":%-8u %-8o %-8x:\n\n", i, j, k);
printf(":%#8u %#8o %#8X:\n\n", i, j, k);
printf(":%08u %08o %08X:\n\n", i, j, k);