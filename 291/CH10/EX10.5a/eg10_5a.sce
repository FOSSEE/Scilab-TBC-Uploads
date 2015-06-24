X = [53 35 31 37 40 43; 36 34 17 21 30 18; 47 37 17 31 45 26; 55 31 17 23 43 37; 40 32 19 26 45 37; 52 42 20 27 26 32; 39 28 21 21 36 28; 40 32 21 21 36 35];
m= 8;
n = 6;
Xidot = zeros(8,1);
for i=1:8
    for j=1:6
        Xidot(i)=Xidot(i) + X(i,j);
    end
end
Xidot = Xidot/6;
Xjdot = zeros(6,1);
for j=1:6
    for i=1:8
        Xjdot(j)=Xjdot(j) + X(i,j);
    end
end
Xjdot = Xjdot/8;
Xdotdot = sum(Xidot)/8;
new = (Xidot - Xdotdot)^2;
SSr = n*sum(new);
new1 = (Xjdot - Xdotdot)^2;
SSc = m*sum(new1);
SSe = 0;
for i=1:m
    for j=1:n
        SSe = SSe + (X(i,j)-Xidot(i)-Xjdot(j)+ Xdotdot)^2;
    end
end
N =(m-1)*(n-1);
TS1 = SSr*N/((m-1)*SSe); 
TS2 = SSc*N/((n-1)*SSe);
pvaluec = 1- cdff("PQ", TS1, m-1, N);
pvaluer = 1- cdff("PQ", TS2, n-1, N);
//disp(pvaluer, pvaluec);
//disp(TS1, TS2);
disp(TS1, "The value of the F-statistic for testing that there is no row effect is");
disp(pvaluec, "The p-value for testing that there is no row effect is");

disp(TS2, "The value of the F-statistic for testing that there is no column effect is");
disp(pvaluer, "The p-value for testing that there is no column effect is");
