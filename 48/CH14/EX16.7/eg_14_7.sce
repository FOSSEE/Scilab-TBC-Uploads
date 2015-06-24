clc;
clear;
s=['S' 'C1' 'SB1';
   'B1' 'S' '-';
   'C1' 'C2' '-';
   'C2' '-' 'S'];
n=max(size(s(:,1)));
l=1;
for i=1:n
    for j=i:n
        if(i~=j)
            p(l,1)=strcat([s(i,1) s(j,1)]);
            if(s(i,2)=='-' | s(j,2)=='-')
                p(l,2)='-';
            else
                p(l,2)=strcat([s(i,2) s(j,2)]);
            end
            if(s(i,3)=='-' | s(j,3)=='-')
                p(l,3)='-';
            else
                p(l,3)=strcat([s(i,3) s(j,3)]);
            end
            l=l+1;
       end
    end
end