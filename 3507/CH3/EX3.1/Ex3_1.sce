//chapter3
//example3.1
//page41

Ib1=10 // mA
Eb1=100 // V
Ib2=20 // mA

// Ib is proportional to Eb^(3/2)
// so we can say Ib1/Ib2 = Eb1^1.5/Eb2^1.5
//thus we can write

log_Eb2=(2/3)*log(Eb1^1.5*Ib2/Ib1)
Eb2=exp(log_Eb2)
printf("required plate voltage = %.3f V",Eb2)
