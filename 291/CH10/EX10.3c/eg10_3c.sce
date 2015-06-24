Xij = [3.2 3.4 3.3 3.5; 3.4 3.0 3.7 3.3; 2.8 2.6 3.0 2.7];
Xi = zeros(3,1);
n= 4;
m=3;
for i=1:3
    for j=1:4
        Xi(i)= Xi(i) + Xij(i,j);
    end
end
Xi = Xi/n;
SSW= 0;
for i=1:3
    for j= 1:4
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
C = 3.95; //from table A5
W = C*sqrt(SSW/(9*4));
disp(W);
disp(Xi(1)-Xi(2)+W ,"and ", Xi(1)-Xi(2)-W, "Mean1 - Mean2 lies between "  );
disp(Xi(1)-Xi(3)+W ,"and ", Xi(1)-Xi(3)-W, "Mean1 - Mean3 lies between "  );
disp(Xi(2)-Xi(3)+W ,"and ", Xi(2)-Xi(3)-W, "Mean2 - Mean3 lies between "  );