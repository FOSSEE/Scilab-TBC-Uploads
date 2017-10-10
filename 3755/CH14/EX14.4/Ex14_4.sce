clear
//
//
//

//Variable declaration    
I0=10^-12;      //standard intensity level(watt/m^2)
A=1.4;     //area(m^2)
il=60;     //intensity level(decibels)

//Calculations
x=10^(il/10);
I=x*10^-12;      //intensity level(watt/m^2)
Ap=I*A;      //acoustic power(watt)

//Result
printf("\n acoustic power is %e watt",Ap)
printf("\n answer in the book is wrong")
