function result= new(lamda,n, t )
    newsum = 0;
    for i=1:n
        newsum= newsum + lamda(i)
        result=%e^(-1*newsum*t)
    end
endfunction