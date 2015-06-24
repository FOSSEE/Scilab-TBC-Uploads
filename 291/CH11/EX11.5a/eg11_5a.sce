Nij = [62 14; 9938 19986];
n= sum(Nij);
Ni = zeros(2,1);
Mj = zeros(2,1);
for i= 1:2
    for j= 1:2
        Ni(i) = Ni(i) + Nij(i,j);
    end
end
for j= 1:2
    for i= 1:2
        Mj(j) = Mj(j) + Nij(i,j);
    end
end
NM = ones(2,2);
for i=1:2
    for j=1:2
        NM(i,j)= Ni(i)*Mj(j);
    end
end
NM= NM/n;
disp(NM);
TS = 0
for i=1:2
    for j= 1:2
        TS = TS + ((Nij(i,j)-NM(i,j))^2)/NM(i,j);
    end
end
disp(TS, "The test statistic is")
compare = cdfchi("X", 1, 0.99, 0.01);
//disp(compare)
if(TS>compare)
    disp("The null hypothesis is rejected at the 5% level of significance");
else
    disp("The null hypothesis is accepted at the 5% level of significance");
end    