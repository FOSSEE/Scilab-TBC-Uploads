function result= fact(num)
    if(num<=0)
        result= 1
    else
        result = factorial(num)
    end        
endfunction
function result = proba(n,m,k)
    if(pmodulo(k,2)==0)
        k=k/2;
        result = 2*fact(m-1)*fact(n-1)*fact(n)*fact(m)/(fact(k-1)^2*fact(m-k)*fact(n-k)*fact(n+m));
     else   
         k = (k-1)/2;
         result = fact(m-1)*fact(n-1)*fact(n)*fact(m)/(fact(k-1)*fact(k)*fact(m-k)*fact(n-k-1)*fact(n+m)) + fact(m-1)*fact(n-1)*fact(n)*fact(m)/(fact(k-1)*fact(k)*fact(m-k-1)*fact(n-k)*fact(n+m));
   end      
endfunction

r1 = 20;
n1 = 20;
m1=10;
ans1 =0;
for i=1:19
    ans1 =ans1 + proba(n1,m1,i);
    //disp(proba(n,m,i));
    //disp(ans1)
end
if(ans1<0.5)
    pvalue1 = 2*ans1;
else 
    pvalue1 = 2*(1-ans1);
end
disp(pvalue1, "P-value is")        