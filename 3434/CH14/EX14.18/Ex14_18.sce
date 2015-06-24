clc
// given data
i=10/100.0 // rate
Acost=90000 // cost of A in Rs
Bcost=75000 //  cost of B in Rs
Acashfl=26000 // annual cash flow of A in Rs
Bcashfl=26000 // annual cash flow of B in Rs
nA=5 // useful life of A in years
nB=4 // useful life of B in years

NPVA=Acashfl*(((1+i)**nA) - 1)/(i*(1+i)**nA) - Acost // NPV for A
NPVB=Bcashfl*(((1+i)**nB) - 1)/(i*(1+i)**nB)- Bcost // NPV for B

printf( "\nThe NPV for A is Rs %.0f",NPVA)

printf( "\nThe NPV for B is Rs %.0f",NPVB)

AEA=i*NPVA/(1-(1+i)**(-nA))


AEB=i*NPVB/(1-(1+i)**(-nB))

printf( "\nThe AE for A is Rs %.0f",AEA)

printf( "\nThe AE for B is Rs %.0f",AEB)

printf( "\nThe machine B will have higher profitability")







