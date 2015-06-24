//finds the number of z's in the 3 dimensional matrix A
function res=noof3(a,z)
    res=0;
    for i=1:max(size(a(:,1,1)))
        for j=1:max(size(a(1,:,1)))
            for l=1:2
                if(a(i,j,l)==z)
                    res=res+1;
                end
            end
        end
    end
endfunction