Xij = [220 251 226 246 260; 244 235 232 242 225; 252 272 250 238 256];
Xi = zeros(3,1);
n= 5;
m=3;
for i=1:3
    for j=1:5
        Xi(i)= Xi(i) + Xij(i,j);
    end
end
Xi = Xi/n;
SSW= 0;
for i=1:3
    for j= 1:5
        SSW = SSW + ((Xij(i,j)-Xi(i))^2)
    end
end
sigma1 = SSW/((n*m)-m);
Xdotdot = sum(Xi)/m;
new = (Xi - Xdotdot)^2;
SSb= n*sum(new);
sigma2 = SSb/(m-1);
TS = sigma2/sigma1;
//disp(sigma1);
//disp(sigma2);
disp(TS, "Value of the test statistic is");
pvalue = 1 - cdff("PQ", TS,m-1, ((n*m)-m) );
disp(pvalue, "The p-value is")
if(pvalue>0.05)
disp( "Since the p-value is greater than .05, the null hypothesis that the mean mileage is the same for all 3 brands of gasoline cannot be rejected. ")
end