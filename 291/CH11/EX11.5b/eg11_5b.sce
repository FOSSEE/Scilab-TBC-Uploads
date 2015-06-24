Nij = [28 30 58 55; 472 470 442 445];
n= sum(Nij);
Ni = zeros(2,1);
Mj = zeros(4,1);
for i= 1:2
    for j= 1:4
        Ni(i) = Ni(i) + Nij(i,j);
    end
end
for j= 1:4
    for i= 1:2
        Mj(j) = Mj(j) + Nij(i,j);
    end
end
NM = ones(2,4);
for i=1:2
    for j=1:4
        NM(i,j)= Ni(i)*Mj(j);
    end
end
NM= NM/n;
//disp(NM);
TS = 0
for i=1:2
    for j= 1:4
        TS = TS + ((Nij(i,j)-NM(i,j))^2)/NM(i,j);
    end
end
disp(TS, "The test statistic is")
compare = cdfchi("X", 3, 0.99, 0.01);
pvalue = 1- cdfchi("PQ", TS, 3);
disp(pvalue, "The p-value is")
//disp(compare)
if(TS>compare)
    disp("The null hypothesis is rejected at the 1% level of significance");
else
    disp("The null hypothesis is accepted at the 5% level of significance");
end    