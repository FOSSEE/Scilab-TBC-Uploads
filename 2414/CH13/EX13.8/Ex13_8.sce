clc;
close();
clear();
//page no 455
//prob no. 13.8
Pe=10^-5;
R=1*10^6;  //bits/s
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
function display(rhodb,pt)
    Eb=E(rhodb);
    Pr=P(E);
mprintf('\n(%c)Bit energy , Eb=%.2f*10^-21 J \n',pt,Eb*10^21);
mprintf(' Required reciver carrier power , Pr=%.2f fW \n',Pr*10^15);

endfunction
//Part a
rhodb=9.6;
display(rhodb,'a');

//Part b
rhodb=10.3;
display(rhodb,'b');

//Part c
rhodb=12.6;
display(rhodb,'c');

//Part d
rhodb=13.4;
display(rhodb,'d');
