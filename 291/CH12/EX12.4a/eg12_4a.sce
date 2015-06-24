X= [65.2 67.1 69.4 78.2 74 80.3];
Y = [59.4 72.1 68 66.2 58.5];
Z = [X Y];
Z = gsort(Z,'g','i');
[m n]=  size(X);
[p q] = size(Z)
T = 0;
for i=1:n
    test = X(i);
    for j =1 : q
        if(test== Z(j))
            T = T+ j;
        end   
    end
end
disp(T, "The test statistic is ")