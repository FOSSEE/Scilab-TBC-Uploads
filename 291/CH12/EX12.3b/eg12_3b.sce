n =4;
mo = 2;
X = [4.2 1.8 5.3 1.7];
t =3;
tstar= min(t, (n*(n+1)/2) - t);
P = zeros(4,4);
P(1,1)= 0.5;
P(1,2) = 1;
P(1,3) = 1;
P(1,4) = 1;
for i=2:4
    for j = 1:4
        if (j-i <1) 
           P(i,j) = 0.5*P(i-1, j);
           //disp(j,i);
           //disp(P(i,j))
           
        else
            P(i,j) = 0.5*(P(i-1,j-i)+P(i-1,j));   
        end
    end
end
disp(P)