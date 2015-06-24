function res=noof0(a) // to find the no of zeros in  given matrix
    res=0;
    for i=1:max(size(a(:,1)))
        for j=1:max(size(a(1,:)))
            if(a(i,j)==0)
                res=res+1;
            end
        end
    end
endfunction