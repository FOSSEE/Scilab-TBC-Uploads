clc
// given data

P=200000.0 //principal value in rs
i=10/100.0 // interest rate 
n=25.0 // time in years
L=2.0 // power produced  in kW

A=P*(i*(1+i)**n)/(-1+(1+i)**n) // annualised capital cost in rs

maintcost=P*0.05 // annual maintainence cost
Totalcost=A+maintcost //  total annual cost

Elec=L*0.25*10*365 // annual electricity production

Cost=Totalcost/Elec // unit cost of electricity production

printf("unit cost of electricity production is Rs %.1f",Cost)
