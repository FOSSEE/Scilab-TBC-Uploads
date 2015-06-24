Nij = [68 56 32; 52 72 20];
n3= sum(Nij);
Ni = zeros(2,1);
Mj = zeros(3,1);
for i= 1:2
    for j= 1:3
        Ni(i) = Ni(i) + Nij(i,j);
    end
end
for j= 1:3
    for i= 1:2
        Mj(j) = Mj(j) + Nij(i,j);
    end
end
NM = ones(2,3);
for i=1:2
    for j=1:3
        NM(i,j)= Ni(i)*Mj(j);
    end
end
NM= NM/n3;
//disp(NM);
TS = 0
for i=1:2
    for j= 1:3
        TS = TS + ((Nij(i,j)-NM(i,j))^2)/NM(i,j);
    end
end
disp(TS, "The test statistic is")
compare = cdfchi("X", 2, 0.95, 0.05);
//disp(compare)
if(TS>compare)
    disp("The null hypothesis is rejected at the 5% level of significance");
else
    disp("The null hypothesis is accepted at the 5% level of significance");
end    