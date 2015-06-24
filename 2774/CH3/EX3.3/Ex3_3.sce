clc
//initialization of variables
P1=200      // initial pressure in kPa
V1=2        //initial volume in m^3
P2=100     //final pressure in kPa
C=P1*V1// isothermal process i.e P.V=constant
//  find final volume 
V2=P1*V1/P2 // final volume by P1.V1=P2.V2

function[p]=pressure(v) // expressing pressure as function of volume
    p=C/v;
endfunction
 
W=integrate('C/v','v',V1,V2) //itegrating over volume to get work
printf("The Work done by gas is %.0f kJ",W) // answer is approximated in textbook
