//Example 12.12
//Find the required probabilities.
disp('P(A occurs exactly k times in N trials)=(n C K)[P(A)]^k[1-P(A)]^(N-k)')
disp('P(A)=1/6  P(~A)=5/6')
funcprot(0)
function c = combination ( n , r )
c = prod ( n : -1 : n-r+1 )/ prod (1:r)
endfunction
disp('P( 3 shows up exactly twice in 6 trials)=(6 c 2)*(1/6)^2*(5/6)^4=')
p=combination(6,2)*(1/6)^2*(5/6)^4;
disp(p);
disp('P(4 shows up atleast twice)=1-P(4 does not shows up)-P(4 shows up once)')
disp('P(4 does not show up)=(6 c 0)*(1/6)^0*(5/6)^6=')
p=combination(6,0)*(1/6)^0*(5/6)^6;
disp(p);
disp('P(4 shows up once)=(6 c 1)*(1/6)^1*(5/6)^5=')
p=combination(6,1)*(1/6)^1*(5/6)^5;
disp(p);
disp('P(4 shows up atleast twice)=1-(5/6)^6-(5/6)^5=')
p=1-(5/6)^6-(5/6)^5;
disp(p);
