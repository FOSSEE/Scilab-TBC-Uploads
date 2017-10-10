//Example 4.22
close;
clc;

E=3;                  //in volts
Rm=100;               //In ohms
Im=1*10^-3;           //in amperes
//Rs value that will give FSD current
Rs=E/Im-Rm;
printf('\nValue of Rs that will limit Current to FSD = %.2f k ohm\n',Rs/1000)

function [Rx]=deflection(x,Rs,Rm)
    Rx=(Rs+Rm)/x-(Rs+Rm);
endfunction

//For 20% deflection
funcprot(0);
x=20/100;             //x=I/Im
[Rx]=deflection(x,Rs,Rm);
printf('\nValue of Rx that will 20 percent deflection = %.2f k ohm\n',Rx/1000)

//For 40% deflection
funcprot(0);
x=40/100;             //x=I/Im
[Rx]=deflection(x,Rs,Rm);
printf('\nValue of Rx that will 40 percent deflection = %.2f k ohm\n',Rx/1000)

//For 50% deflection
funcprot(0);
x=50/100;             //x=I/Im
[Rx]=deflection(x,Rs,Rm);
printf('\nValue of Rx that will 50 percent deflection = %.2f k ohm\n',Rx/1000)

//For 75% deflection
funcprot(0);
x=75/100;             //x=I/Im
[Rx]=deflection(x,Rs,Rm);
printf('\nValue of Rx that will 75 percent deflection = %.2f k ohm\n',Rx/1000)

//For 90% deflection
funcprot(0);
x=90/100;             //x=I/Im
[Rx]=deflection(x,Rs,Rm);
printf('\nValue of Rx that will 90 percent deflection = %.2f k ohm\n',Rx/1000)

//For 100% deflection
funcprot(0);
x=100/100;             //x=I/Im
[Rx]=deflection(x,Rs,Rm);
printf('\nValue of Rx that will 100 percent deflection = %.2f k ohm\n',Rx/1000)