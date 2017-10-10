//Chapter 6, Example 6.5, Page 158
clc
clear
// Energy released
MLa = 138.906348
MMo = 94.905842
MXE = 138.918787
MSr = 94.919358
Ep = (MXE+MSr-MLa-MMo)*(931.5)
printf("Ep = %f MeV",Ep)
//Answers may vary due to round off error
