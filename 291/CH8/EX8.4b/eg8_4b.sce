X = [5.5 6.0 7.0 6.0 7.5 6.0 7.5 5.5 7.0 6.5];
Y = [6.5 6.0 8.5 7.0 6.5 8.0 7.5 6.5 7.5 6.0 8.5 7.0  ];
n = length(X);
m= length(Y);
Xbar= mean(X);
Ybar = mean(Y);
Sx = variance(X);
Sy = variance(Y);
Sp = ((n-1)*Sx/(n+m-2)) + ((m-1)*Sy/(n+m-2));
den = sqrt(Sp*((1/n)+(1/m)));
TS = (Xbar -Ybar)/den;
disp(TS, "The test statistic is");
tvalue = cdft("T", m+n-2, 0.95, 0.05)
//disp(tvalue)
if(TS<tvalue)
    disp("Null hypothesis is rejected at 5% level of significance")
 else
      disp("Null hypothesis is  accepted at 5% level of significance")  
end   
