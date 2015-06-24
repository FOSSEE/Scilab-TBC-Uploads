X= [36.1 40.2 33.8 38.5 42 35.8 37 41 36.8 37.2 33 36];
n = length(X);
uo = 40;
Xbar=mean(X);
sd = sqrt(variance(X));
T = sqrt(n)*(Xbar - uo)/sd;
Tvalue = cdft("T", n-1, 0.05, 0.95 );
//disp(Tvalue)
disp(T, "The T value is ")
if(T<Tvalue)
    disp("Null hypothesis is rejected at 5% level of significance")
 else
      disp("Null hypothesis is  accepted at 5% level of significance")  
end   