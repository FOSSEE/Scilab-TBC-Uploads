function res=noof(a)  // this function returns the no of 1's in the given matrrix
    res=0;
    for i=1:max(size(a(:,1)))
        for j=1:max(size(a(1,:)))
            if(a(i,j)==1)
                res=res+1;
            end
        end
    end
endfunction