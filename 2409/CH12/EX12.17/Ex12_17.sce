

//Variable Declaration

CNR=17.4   //Clear sky input C/N (dB)
T=10       //Threshold level for FM etector(dB)
Ta=272     //Value of Ta(Kelvin)
Tscs=544   //Value of Tscs(Kelvin)

//Calculation

TM=CNR-T    //Threshold margin at FM detector(dB)
CNR=10**(CNR/10)  //Converting CNR to ratio
NCR=1/CNR

function [y]=f(A)
    y=0.1-NCR*(A+(A-1)*Ta/Tscs)
endfunction    
A=fsolve(2,f)

A=10*log10(A)  //Converting A into decibels
A=round(A)

// Getting the value of probablity of exceeding A from the curve

if (A==6) then
   P=2.5*10**-4 
else
   printf("error")
end
Av=100*(1-P)  //Availability(percentage)

//Result

printf("The time system stays above threshold is %.3f percentage",Av)


