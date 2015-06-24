function result=bin(n,k, p)
    if(k==0)
        result = (1-p)^n;
     else
         result  = p*(n-k+1)*bin(n, k-1, p)/((1-p)*k);  
     end    
endfunction

disp(bin(6, 0, 0.4), "Probability that X=0 is")
disp(bin(6, 1, 0.4), "Probability that X=1 is")
disp(bin(6, 2, 0.4), "Probability that X=2 is")
disp(bin(6, 3, 0.4), "Probability that X=3 is")
disp(bin(6, 4, 0.4), "Probability that X=4 is")
disp(bin(6, 5, 0.4), "Probability that X=5 is")
disp(bin(6, 6, 0.4), "Probability that X=6 is")