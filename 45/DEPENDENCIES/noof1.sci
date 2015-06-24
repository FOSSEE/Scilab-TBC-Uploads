function res=noof1(a,z) //this function returns both the no of zeros and ones in  given matrix  
    res=0;
    for i=1:max(size(a(:,1)))
        for j=1:max(size(a(1,:)))
            if(a(i,j)==z)
                res=res+1;
            end
        end
    end
endfunction