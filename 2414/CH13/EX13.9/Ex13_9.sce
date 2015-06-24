clc;
close();
clear();
//page no 456
//prob no. 13.9

//Data form ex13.8
Pe=10^-5;
R=2*10^6;  //bits/s  (changed)
k=1.38*10^-23;   //Boltzmann cons
Ti=475;  //K
Te=250;  //K
Tsys=Ti+Te;
nsys=k*Tsys;  //W/Hz  
function Eb=E(rhodb)    //function for Eb
    rho=10^(rhodb/10);
    Eb=nsys*rho;
endfunction
function Pr=P(E)      //function for Pr
    Pr=R*Eb;
endfunction

rhodb=9.6;
 Eb=E(rhodb);
 Pr=P(E);
mprintf('\nBit energy , Eb=%.2f*10^-21 J \n',Eb*10^21);
mprintf(' Required reciver carrier power , Pr=%.2f fW \n',Pr*10^15);
