clc
// given data
Co=20000.0 // cost in Rs
B=3000.0 // annual benefit in rs
n=15.0 // time in years
i=15.0/100 // initial guess for rate
NPV=zeros(4)

NPV(1)=B*(((1+i)**n)-1)/(i*(1+i)**n)-Co
x=1
printf( "Iteration no.\t\ti*\t\tNPV(i*)") 
while NPV(x)<0
    x=x+1  
    i=i-0.01
    NPV(x)=B*(((1+i)**n)-1)/(i*(1+i)**n)-Co
end   
for z =1:4
    printf( "\n %i\t\t      %.2f\t     %.0f\t ",z,0.15-((z-1)/100.0),NPV(z))

end
IRR=i+(i+0.01-i)/(NPV(x)+NPV(x-1)) // using equation 14.28

printf( "\nThe IRR is %.0f %%",IRR*100)

// the answer is slightly different in textbook due to approximation
