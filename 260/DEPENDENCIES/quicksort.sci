function xsort = quicksort(x)
    n= length(x)
    pivot = x(1)
if n == 0 then
        xsort = []
elseif n == 1 then
     xsort = x(1)
 else
    j = n    
    for i = 2:n
        if pivot < x(i) then
            for j = j:-1:i
               if pivot > x(j) then
                        t = x(i)
                        x(i) = x(j)
                        x(j) = t
                        break
                end
                
            end
                
        end

            if j == i then
                if i == n & pivot > x(i) then
                    xsort = [ quicksort( x(2:i) ) pivot]
                else
                    xsort = [  quicksort( x(2:i-1) )   pivot   quicksort( x(i:n) )]
                    break ;
                end
            end
     end
end

endfunction