//Variable Declaration
x1 = [1,2,3,4]            // Domain of f(x)
x2 = [0,1,2,3,4]          // Domain of h(x)

// calculations
f = (x1-2)/2.0                   // list of values of f(x)
h = (x2^2)/25.0                 // list of values of h(x)


//Results
if(sum(f) ~= 1 ) then
        printf ( "f(x) can not serve as probability distribution")
end

if(sum(h) ~= 1) then
        printf ( "h(x) can not serve as probability distribution")
end        
     
printf ( "f(0) is negative(P>=0) so f(x) can not serve as probability distribution")
