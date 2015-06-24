function result= prob(N, M, K)        
      if(N==1 & M==0)
             if(K >0)
                result = 1;
             else
                 result =0;
             end
     
      elseif (N==0 & M==1)
             if(K <0)
                result = 0;
             else
                 result =1;
             end
      elseif (N==0 & M==0 &K==0)
            result =1;
      else             
        result = (prob(N-1, M, K-N-M)*N/(N+M)) + (prob(N, M-1, K)*M/(N+M));
        //result = prob(N-1, M, K-N-M)*N/(N+M) + prob(N, M-1, K);
        //result = result +  prob(N, M-1, K);
       end
endfunction

function result =pval(n,m,t)
    result = 2*min(prob(n,m,t), 1-prob(n,m,t-1));
endfunction