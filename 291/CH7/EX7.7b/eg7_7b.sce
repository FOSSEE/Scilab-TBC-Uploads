function result1 = estimate(d, sigma)
    sigmainv = 1/sigma;
    new = d./sigma;
    result1 = sum(new)/sum(sigmainv);
endfunction

function result2 = mserror( sigma)
    sigmainv = 1/sigma;
    
    result1 = 1/sum(sigmainv);
endfunction
