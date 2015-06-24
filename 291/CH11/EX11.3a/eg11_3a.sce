Y = [8 0 0 1 3 4 0 2 12 5 1 8 0 2 0 1 9 3 4 5 3 3 4 7 4 0 1 2 1 2];
weeks = 30;
lamda = sum(Y)/weeks;
p = zeros(5,1);
p(1) = cdfpoi("PQ", 0, lamda); 
p(2) = cdfpoi("PQ", 1, lamda) - p(1);
p(3) = cdfpoi("PQ", 3, lamda) - cdfpoi("PQ", 1, lamda);
p(4) = cdfpoi("PQ", 5, lamda) - cdfpoi("PQ", 3, lamda);
p(5) = 1 - cdfpoi("PQ", 5, lamda);
//disp(p);
X = zeros(5,1);
for i=1:30
    if(Y(i)==0)
        X(1) = X(1) +1;
    end
    if(Y(i)==1)
        X(2) = X(2) +1;
    end    
    if(Y(i)==2)
        X(3) = X(3) +1;
    end
    if(Y(i)==3)
        X(3) = X(3) +1;
    end
    if(Y(i)==4)
        X(4) = X(4) +1;
    end
    if(Y(i)==5)
        X(4) = X(4) +1;
    end
    if(Y(i)>5)
         X(5) = X(5) +1;
     end    
end
//disp(X);
T= 0;
npi = weeks * p;
for i=1:5
    T = T + ((X(i)-npi(i))^2)/npi(i);
end
disp(T, "T is");
pvalue = 1- cdfchi("PQ", T, 3);
disp(pvalue, "The p-value is")
disp("Hypothesis of an underlying poisson distribution is rejected")
