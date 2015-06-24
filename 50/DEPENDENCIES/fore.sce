function x=fore(L,b)

for i = 1:1:n
	sumk=0
	for j=1:i-1
		sumk=sumk+L(i,j)*x(j); 
	end; 
	x(i)=(b(i)-sumk)/L(i,i); 
end;

endfunction

