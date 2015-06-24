//(2.1)  A gas in a piston–cylinder assembly undergoes an expansion process for which the relationship between pressure and volume is given by p*(v^n) = constant.The initial pressure is 3 bar, the initial volume is 0.1 m3, and the final volume is 0.2 m3. Determine the work for the process,in kJ, if (a) n=1.5, (b) n=1.0,and (c) n=0.

//solution

// variable initialization
p1 = 3*(10^5) // initial pressure of gas in pascal
v1 = .1 //initial volumme of gas in meter^3
v2 = .2 //final volume of gas in meter^3

//part (a) i.e. n=1.5
funcprot(0);
function [constant] = f1(n)
    constant = p1*(v1^n);                      //p*(v^n) = constant
endfunction;

function [p] = f2(v,n)                         
    p = f1(n)/(v^n);                          //expressing pressure as function of volume        
endfunction;

function [work1] = f3(n)
    work1 = intg(v1,v2,f2);                   //integrating pdv from initial to final volume 
endfunction;

w1 = f3(1.5)/1000;                           // divided by 1000 to convert to KJ
disp(w1,"the work done for n=1.5 in KJ is");

//part(b) i.e. n = 1

w2 = f3(1)/1000;
disp(w2,"the work done for n=1 in KJ is");

//part(c) i.e. n=0

w3 = f3(0)/1000;
disp(w3,"the work done for n=0 in KJ is");





