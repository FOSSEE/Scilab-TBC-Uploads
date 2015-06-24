//example 4.1 (pg 149)

     //2x1 + 3x2 - x3 = 5
    //-2x2 - x3 = -7
   //-5x3 = -15

A = [2 3 -1;0 -2 -1;0 0 -5]
b = [5 -7 -15]'
a=[A b]
[nA,mA]=size(A)
n=nA

     //Backward substitution

x(3) = a(n,n+1)/a(n,n);

for i = n-1:-1:1
	sumk=0;
	for k=i+1:n
		sumk=sumk+a(i,k)*x(k);
	end
	x(i)=(a(i,n+1)-sumk)/a(i,i); 
end
    disp(x)