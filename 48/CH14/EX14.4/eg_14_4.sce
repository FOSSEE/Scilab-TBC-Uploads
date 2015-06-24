clc;
clear;
N=4;
s=[ 'PS' 'x=0' 'x=1';
    'A' 'A' 'B';
    'B' 'C' 'B';
    'C' 'A' 'D';
    'D' 'C' 'B'];
n=max(size(s(:,1)));
s(n+1,:)=['-' '-' '-'];
l=2;
for i=2:n
    for j=i:n
        if(i~=j)
            s(n+l,1)=strcat([s(i,1) s(j,1)]);
            s(n+l,2)=strcat([s(i,2) s(j,2)]);
            s(n+l,3)=strcat([s(i,3) s(j,3)]);
            l=l+1;
        end
    end
end
disp(s);