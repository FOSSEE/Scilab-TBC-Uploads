clc
// given data

Co=120000.0 // cost in Rs
N=5 // useful life
T=40/100.0 // tax rate 
i=9/100.0 // interest rate
Earning=[33000.0,35000.0,37000.0,39000,41000.0]
Depreciate=Co/N // depreciation in  Rs
pretax=zeros(5)
discshfl=zeros(5)
for x = 2:6
    pretax=Earning(x-1)-Depreciate
    tax=0.4*pretax
    ernng=pretax-0.4*pretax
    cashf=ernng+Depreciate
    discshfl(x-1)=cashf/(1+i)**(x-1)
end
netdiscntincm=sum(discshfl) // net discount income in Rs
NPV=netdiscntincm-Co // NPV
printf( "NPV of dryer is Rs %.2f",NPV)

// The answer in the book is wrong as the value of discounted cashflow is incorrect
    
