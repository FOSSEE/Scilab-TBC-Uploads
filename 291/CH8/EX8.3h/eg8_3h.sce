X= [340 356 332 362 318 344 386 402 322 360 362 354 340 372 338 375 364 355 324 370];
uo = 350;
Xbar = mean(X);
var =  variance(X);
S = sqrt(var)
//disp(Xbar, sqrt(var));
n = length(X)
T = sqrt(n)*(Xbar - uo)/S;
Tvalue = cdft("T", n-1, 0.95, 0.05 );
//disp(Tvalue)
disp(T, "The T value is ")
if(T<Tvalue)
    disp("Null hypothesis is accepted at 10% level of significance")
 else
      disp("Null hypothesis is not accepted at 10% level of significance")  
end      
