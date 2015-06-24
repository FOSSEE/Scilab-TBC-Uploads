//finds the number of z's in the matrix A
function res=number_of(a,z)
    res=0;
    for i=1:max(size(a(:,1)))
        for j=1:max(size(a(1,:)))
            if(a(i,j)==z)
                res=res+1;
            end
        end
    end
endfunction