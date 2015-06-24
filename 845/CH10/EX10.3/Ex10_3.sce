//Example 10.3

clc
clear

m = 5;
n = 5;
u = zeros(m,n);
u(m,:) = [50 100 100 100 50];
u0 = u;
I = ceil(m/2);
J = ceil(n/2);

u(J,I) = (u0(J-2,I-2) + u0(J-2,I+2) + u0(J+2,I-2) + u0(J+2,I+2)) / 4;

for j = [J-1 J+1]
    for i = [I-1 I+1]
        u(j,i) = (u(j-1,i-1) + u(j-1,i+1) + u(j+1,i-1) + u(j+1,i+1)) / 4;
    end
end

j1 = [J-1 J J J+1];
i1 = [I I-1 I+1 I];
for k = 1:4
    i = i1(k);
    j = j1(k);
    u(j,i) = (u(j,i-1) + u(j,i+1) + u(j-1,i) + u(j+1,i)) / 4;
end

kf = 2;
tab = zeros(kf+1,(m-2)*(n-2));
row = [];
for j = 2:n-1
    row = [row u(j,2:m-1)];
end
tab(1,:) = row;
for k = 1:kf
    row = [];
    for j = 2:n-1
        for i = 2:m-1
            u(j,i) = (u(j,i-1) + u(j,i+1) + u(j-1,i) + u(j+1,i)) / 4;
        end
        row = [row u(j,2:m-1)];
    end
    row = round(row*10^4)/10^4;
    tab(k+1,:) = row;
end
mprintf("%4s %9s %9s %9s %9s %10s %10s %10s %10s %10s",'r','u11','u21','u31','u12','u22','u32','u13','u23','u33')
disp([(1:k+1)' tab])
