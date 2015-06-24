clc;
clear;
//assume the first cloumn values are of machine M1 and 2nd column are of M2
p=[1,1;1 3;2 2;2 4;3 3;3 1;4 4;4 2];
z=1;
for i=1:length(p(:,1))
    for j=i:length(p(:,1))
        if(p(i,1)==p(j,1) & i~=j)
            q(z,:)=[p(i,:) p(j,:)];
            z=z+1;
        end
    end
end
disp("pi(R)");
disp(q);
z=1;
for i=1:length(p(:,1))
    for j=i:length(p(:,1))
        if(p(i,2)==p(j,2) & i~=j)
            q(z,:)=[p(i,:) p(j,:)];
            z=z+1;
        end
    end
end
disp("pi(S)");
disp(q);