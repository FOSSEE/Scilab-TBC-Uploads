//example 14.21 PG-14.42
clc
clear
printf("\n\n Given=> \n\n")
printf("    Y = (A+B)(A''+C)(B''+C'')\n\n")
printf("    Y = (AA''+ AC +A''B + BC)(B''+C'')\n\n")
printf("    Y = (AC +A''B + BC)(B''+C'')   .......Since A.A''= 0\n\n")
printf("    Y = AB''C + ACC''+ A''BB''+ A''BC''+ BB''C+ BCC''\n\n")
printf("    Y = AB''C + A''BC''     Since A.A'' = 0")
