a=2^4*3^3*7*11*13
b=2^3*3^2*5^2*11*17
V=int32([a,b]);
[d]=gcd(V)
lcm1=2^4*3^3*5^2*7*11*13*17   //lcm is the product of those primes which appear in either a or b