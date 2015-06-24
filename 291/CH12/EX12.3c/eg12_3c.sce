n =20;
t =142;
tstar= min(t, (n*(n+1)/2) - t);
P = ones(20,tstar+1);
P(1,1)= 0.5;
P(1,2) = 1;
for i=2:20
    for j = 1:tstar+1        if (j-i <1) 
           P(i,j) = 0.5*P(i-1, j);
           //disp(j,i);
           //disp(P(i,j))
           
        else
            P(i,j) = 0.5*(P(i-1,j-i)+P(i-1,j));   
        end
    end
end
//disp(P)
pvalue= 2*P(20,tstar+1);
disp(pvalue, "Pvalue is")