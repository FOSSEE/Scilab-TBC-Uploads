function out= check(a,b,c,d) 
    for i=1:max(size(a));
        if(a(i,1)==b(i,1) & b(i,1)==c(i,1) & c(i,1)==d(i,1))
            out(i)=0;
        else
            out(i)=1;
        end
    end
endfunction