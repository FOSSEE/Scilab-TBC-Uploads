x= [45 50 55 60 65 70 75];
y= [24.2 25.0 23.3 22.0 21.5 20.6 19.8];
xbar = mean(x);
ybar= mean(y);
n= 7;
SxY = 0;
for i= 1:n
    SxY = SxY + (x(i)*y(i)) - (xbar*ybar);
end

Sxx = 0;
for i=1:n
    Sxx= Sxx + (x(i)*x(i)) - (xbar*xbar);
end
SYY = 0;
for i=1:n
    SYY = SYY + (y(i)*y(i)) - (ybar*ybar);
end
B = SxY/Sxx;
A = ybar - (B*xbar);
//disp(A, "A is");
//disp(B, "B is");

SSR = ((Sxx*SYY)- (SxY*SxY))/Sxx ;
//disp(SSR, "The SSR is")
ts = sqrt(((n-2)*Sxx)/SSR)*abs(B);
disp(ts, "the test statistic is");
tvalue= cdft("T",5, 0.995, 0.005 );
//disp(tvalue, "tvalue is");
if(tvalue < ts)
    disp("Hypothesis beta= 0 is rejected at 1% level of significance")
else
    disp("Hypothesis beta= 0 is accepted at 1% level of significance")
 end   