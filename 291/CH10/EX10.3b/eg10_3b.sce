Xijold = [220 251 226 246 260; 244 235 232 242 225; 252 272 250 238 256];
Xij = Xijold - 220;
m=3;
n=5;
Xidot = zeros(3,1);
for i=1:m
    for j=1:n
        Xidot(i)=Xidot(i) + Xij(i,j);
    end
end
Xidot = Xidot/n;
Xdotdot = sum(Xidot)/m;
SSb=0;
for i=1:m
    SSb = SSb + (Xidot(i)-Xdotdot)^2;
end
SSb = SSb*n;
Xijsquared = Xij.^2;
SSW = sum(Xijsquared) - (m*n*(Xdotdot^2)) - SSb;
sigma1 = SSW/((n*m)-m);
sigma2 = SSb/(m-1);
TS = sigma2/sigma1;
disp(TS, "Value of the test statistic is"); 