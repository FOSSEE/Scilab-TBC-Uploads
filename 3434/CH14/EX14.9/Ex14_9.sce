clc
// given data

G=1 //gradient per period in lakh rs
i=12/100.0 // discount rate 
n=5 // time in years
A1=10 // payment at end of 1st year in lakhs rs
loan=40 // load applied for in lakhs


AGin=(1/i)-5*1/(-1+(1+i)**n) // gradient to uniform series conversion factor

Ag=A1+G*AGin // in lakhs Rs

Pg=Ag*(-1+(1+i)**n)/(i*(1+i)**n) // present worth in lakhs rs

printf( "The present worth is Rs %.2f Lakh",Pg)

if (Pg*0.85<loan)
    printf( "\n Loan is not given as amount is less than applied for loan")

else
printf( "\n Loan is given" )
end
