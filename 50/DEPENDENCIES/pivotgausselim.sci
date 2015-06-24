function [x]=pivotgausselim(A,b)
    M=[A b];
    [ra,ca]=size(A);
    [rb,cb]=size(b);
    n=ra;
    for p=1:1:n
        for k=(p+1):1:n
            if abs(M(k,p))>abs(M(p,p)) then
                M({p,k},:)=M({k,p},:);
            end
        end 
        for i=p+1:1:n
            m(i,p)=M(i,p)/M(p,p);
             M(i,:)=M(i,:)-M(p,:)*m(i,p);   
                
        end
    end
    a=M(1:n,1:n);
    b=M(:,n+1);
    for i = n:-1:1
	sumj=0
	for j=n:-1:i+1
		sumj = sumj + a(i,j)*x(j); 
	end; 
	x(i)=(b(i)-sumj)/a(i,i); 
    end
endfunction