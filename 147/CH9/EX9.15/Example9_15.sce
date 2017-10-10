close();
clear;
clc;
Idss1 = 10; //mA
T1 = 25 + 273; //K
T2 = 100 + 273; //K

//(a)
Idss2 = Idss1*(T2/T1)^(-3/2); //A
mprintf("(a) Saturation current for operating temperature of %d degree C = %0.2f mA\n\n",T2-273, Idss2);
//(b)
//temperature at which saturation current reduces to Idss3
Idss3 = 5; //mA
T3 = T1*(Idss1/Idss3)^(2/3); //K
mprintf("(b) Temperature at which saturation current reduces to %d mA at %d degree C",Idss3, T3-273);