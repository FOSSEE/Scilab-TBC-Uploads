clc;
clear;
s=['PS' 'x=0' 'x=1';
   'A' 'A' 'B';
   'B' 'C' 'D';
   'C' 'D' 'C';
   'D' 'B' 'A'];
q=[0 0;0 0;1 1;1 1];
n=max(size(s(:,1)));
l=1;
for i=2:n
    z=0;x=0;
    for j=i:n
        if(q(i-1,1)==0 & q(i-1,2)==0  & i~=j & z==0)
            p(l,1)=s(i,1);
            p(l,2)=strcat([s(i,2) s(i,3)]);
            p(l,3)='-';
            l=l+1;z=z+1;
        else 
            if(q(i-1,1)==1 & q(i-1,2)==1 & x==0)
                p(l,1)=s(i,1);
                p(l,2)='-';
                p(l,3)=strcat([s(i,2) s(i,3)]);
                l=l+1;x=x+1;
            end
        end 
    end
end
disp(['PS' 'z=0' 'z=1']);
disp(p);
disp(['AB'  '(AC)(AD)(BC)(BD)' '-';
      'CD'  '-' '(AC)(AD)(BC)(BD)']);
