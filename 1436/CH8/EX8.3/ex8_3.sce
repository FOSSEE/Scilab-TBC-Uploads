//Example 8.3, page no-508
clear
clc
i1=37
i2=42
i3=13
i4=6.7
Imax=(i1+i2)+(i1+i2)*(3/100)+(i3+i4)+(i3+i4)*(1/100)

Imin=(i1+i2)-(i1+i2)*(3/100)+(i3+i4)-(i3+i4)*(1/100)

printf("Maximum level of total supply current = %.3f mA\nMinimum level of total supply current = %.3f mA",Imax,Imin)
