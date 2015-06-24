function [x] = back(U,Z)

x=zeros(1,n);
for i = n:-1:1
	sumk=0
	for j=i+1:n
		sumk=sumk+U(i,j)*x(j); 
	end; 
	x(i)=(Z(i)-sumk)/U(i,i); 
end;




endfunction

