//Solved Example 7:
//Reducing The Given Rational Number
funcprot(0)
function[y]=reduce(nm,dn)
rational1=struct('numerator',nm,'denominator',dn)
y=0
if(rational1.numerator>rational1.denominator)
  a=rational1.numerator;
  b=rational1.denominator;
else
  a=rational1.denominator;
  b=rational1.numerator;
end
while(b~=0)
  rem=modulo(a,b);
  a=b;
  b=rem;
end
y=struct('numerator',nm/a,'denominator',dn/a);
disp(y);
endfunction
nm=22;
dn=44;
y=reduce(nm,dn)