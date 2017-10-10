// Ex 25 Page 367

clc;clear;close;
// Given
fs_max=1600;//kHz
fs_min=500;//kHz
IF=465;//kHz

fr=fs_max/fs_min;//ratio
C_ratio = fr**2;//Cs_max/Cs_min
//Part (a)
fo_min=IF+fs_min;//kHz
fo_max=IF+fs_max;//kHz
fr_o=fo_max/fo_min;//frequency ratio for oscillator
C_ratio_o = fr_o**2;//Cs_max/Cs_min
printf("part(a):")
printf("\n For fo>fs, the range of fo : %.f to %.f kHz",fo_min,fo_max)
printf("\n frequency ratio = %.2f",fr_o)
printf("\n capacitance ratio = %.2f",C_ratio_o)

//Part (b)
fo_min=-IF+fs_min;//kHz
fo_max=-IF+fs_max;//kHz
fr_o=fo_max/fo_min;//frequency ratio for oscillator
C_ratio_o = fr_o**2;//Cs_max/Cs_min
printf("\n\n part(b):")
printf("\n For fo>fs, the range of fo : %.f to %.f kHz",fo_min,fo_max)
printf("\n frequency ratio = %.1f",fr_o)
printf("\n capacitance ratio = %.1f",C_ratio_o)
//ans wrong for part b in the book.
