function [M]=jorden(A,b)
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
        M(p,:)=M(p,:)/M(p,p);
        for i=1:1:p-1
            M(i,:)=M(i,:)-M(p,:)*(M(i,p)/M(p,p));         
        end
         for i=p+1:1:n
            M(i,:)=M(i,:)-M(p,:)*(M(i,p)/M(p,p));         
        end
    end
endfunction