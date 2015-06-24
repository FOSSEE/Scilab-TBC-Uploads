//clc()
wf = 01.5;
for i = 1:41
    for j = 1:41
        T(i,j) = 0;
        if j == 1 then
            T(i,j) = 0;//C
        else
            if j == 41 then
                 T(i,j) = 100;//C
            end
        end
        if i == 1 then
            T(i,j) = 75;//C
        else
            if i == 41 then
                T(i,j) = 50;//C
            end
        end
    end
end
e = 100;
while e>1
for i=1:41
    for j = 1:41
        if i>1 & j>1 & i<41 & j<41 then
        Tn(i,j) = (T(i + 1,j) + T(i-1,j) + T(i,j+1) + T(i,j-1))/4;
        Tn(i,j) = wf * Tn(i,j) + (1-wf)*T(i,j);
            if i==2 & j==2 then
            e = abs((Tn(i,j) - T(i,j)) * 100/ (Tn(i,j)));
            end
        T(i,j) = Tn(i,j);
        end
    end
end
end
disp(T,"for error < 1, the temperatures are")

