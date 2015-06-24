clc
f1 = 335 // fixed cost in Rs for capstan lathe
k = 0.25 // stock carrying factor in paise per piece
k = k/100
N1 = sqrt(f1/k) // pieces for capstan lathe
a1 = 4.16 // variable cost per piece for capstan lathe
tc1 = a1+f1/N1+k*N1 // total cost for capstan lathe
f2 = 2120 // fixed cost in Rs for turret lathe
N2 = sqrt(f2/k) // pieces for turret lathe 
a2 = 2.863 // variable cost per piece for turret lathe
tc2 = a2+f2/N2+k*N2 // total cost for turret lathe
printf("\n Total cost per piece for capstan lathe = Rs %0.2f\n Total cost per piece for turret lathe = Rs %0.2f" , tc1 , tc2)
// Answers vary due to round off error
