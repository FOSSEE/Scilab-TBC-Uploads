// (2.2) Four kilograms of a certain gas is contained within a piston–cylinder assembly. The gas undergoes a process for which the pressure–volume relationship is p*(v^1.5) = constant. The initial pressure is 3 bar, the initial volume is 0.1 m3, and the final volume is 0.2 m3. The change in specific internal energy of the gas in the process is u2-u1 =- 4.6 kJ/kg. There are no significant changes in kinetic or potential energy. Determine the net heat transfer for the process, in kJ.

// solution

//variable initialization
p1 = 3*(10^5) // initial pressure in pascal
v1 = .1       // initial volume in m3
v2 = .2      // initial volume in m3
m = 4        //mass of the gas in kg
deltau = -4.6 // change in specific internal energy in KJ/Kg


funcprot(0);
function [constant] = f1(n)
    constant = p1*(v1^n);                      //p*(v^n) = constant
endfunction;

function [p] = f2(v,n)                         
    p = f1(n)/(v^n);                          //expressing pressure as function of volume        
endfunction;

function [work] = f3(n)
    work = intg(v1,v2,f2);                   //integrating pdv from initial to final volume 
endfunction;

w = f3(1.5)/1000;                           // divided by 1000 to convert to KJ

deltaU = m*deltau;                           // change in internal energy in KJ
Q = deltaU + w;                              // neglecting kinetic and potential energy changes

disp(Q,"net heat transfer for the process in KJ")


