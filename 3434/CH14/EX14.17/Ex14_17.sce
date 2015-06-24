clc
// given data
Co=12000.0 // cost in Rs
Ca=200.0 // annual maintainence in Rs
C12=3000.0 // replacement cost in 12th year
S=1000.0 // salvage value in rs
n=20.0 // time in years
i=11/100.0 // interest rate

Cnet=Co-S*(1/(1+i)**n)+Ca*((((1+i)**n)-1)/(i*(i+1)**n))+C12*(1/(1+i)**12)

CR=Cnet*(i*(1+i)**n)/(((1+i)**n)-1)

printf("The Capital Recovery cost is Rs %.0f",CR)
