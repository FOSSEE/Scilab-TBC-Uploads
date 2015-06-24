//Variable Declaration:
n = 20                  //Total number of components
p = 0.1                 //Probability of success

//Calculations:
function [ans]= binomial(n,p,x)
    P=0
    for x = 0:x-1
        P = P + p**x*(1-p)**(n-x)*factorial(n)/(factorial(x)*factorial(n-x))
    end
    disp(P);
    ans = P
endfunction

//Results:
printf("Probability that the sprinkler system fails : %.2f %%",(1-binomial(n,p,4))*100)
