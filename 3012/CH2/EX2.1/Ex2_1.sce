// Given:-
p1 = 3*(10**5)                                // initial pressure of gas in pascal
v1 = 0.1                                      // initial volumme of gas in meter^3
v2 = 0.2                                      // final volume of gas in meter^3

// calculations
// Part (a) i.e. n=1.5
//constant = p1*(v1**n)                         // p*(v^n) = constant
constant1 = p1*(v1**1.5) 
constant2 = p1*(v1**1) 
constant3 = p1*(v1**0) 
// function p                     
function v = p1(v)
    v = constant1/(v^1.5)
endfunction

function v = p2(v)
    v = constant2/(v^1)
endfunction

function v = p3(v)
    v = constant3/(v^0)
endfunction

work1 = intg(v1,v2,p1)                   // integrating pdv from initial to final volume 
w1 = work1(1)/1000                             // divided by 1000 to convert to KJ
printf( 'The work done for n=1.5 in KJ is %.2f',w1)

//part(b) i.e. n = 1
work2 = intg(v1,v2,p2)
w2 = work2(1)/1000
printf( 'The work done for n=1 in KJ is %.2f',w2)

//part(c) i.e. n=0
work3 = intg(v1,v2,p3)
w3 = work3(1)/1000
printf( 'The work done for n=0 in KJ is %.2f',w3)
