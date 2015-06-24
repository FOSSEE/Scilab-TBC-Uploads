clc;
clear;
s=['PS' 'x=0' 'x=1';
   'A' 'A' 'B';
   'B' 'E' 'B';
   'C' 'E' 'F';
   'D' 'E' 'F';
   'E' 'A' 'D';
   'F' 'E' 'B'];
z=0;
disp("Original Machine M4");
disp(s);
p=s;
n=max(size(s(:,1)));
for i=2:n
    for j=i:n
        if(s(i,2)==s(j,2) & s(i,3)==s(j,3) & i~=j)
            z=z+1;
            for k=j:n-1
                p(k,:)=p(k+1,:);
            end
            for k=2:n-1
                if(p(k,2)==s(j,1))
                    p(k,2)=s(i,1);
                end
                if(p(k,3)==s(j,1))
                    p(k,3)=s(i,1);
                end
            end
        end
    end
end
s=p(1:n-z,:);
disp("The contracted Table M4");
disp(s);
p=s;
n=n-z;
z=0;
for i=2:n
    for j=i:n
        if(s(i,2)==s(j,2) & s(i,3)==s(j,3) & i~=j)
            z=z+1;
            for k=j:n-1
                p(k,:)=p(k+1,:);
            end
            for k=2:n-1
                if(p(k,2)==s(j,1))
                    p(k,2)=s(i,1);
                end
                if(p(k,3)==s(j,1))
                    p(k,3)=s(i,1);
                end
            end
        end
    end
end
s=p(1:n-z,:);
disp("Repeated Contractions of M4");
disp(s);
p=s;
n=n-z;
z=0;
for i=2:n
    for j=i:n
        if(s(i,2)==s(j,2) & s(i,3)==s(j,3) & i~=j)
            z=z+1;
            for k=j:n-1
                p(k,:)=p(k+1,:);
            end
            for k=2:n-1
                if(p(k,2)==s(j,1))
                    p(k,2)=s(i,1);
                end
                if(p(k,3)==s(j,1))
                    p(k,3)=s(i,1);
                end
            end
        end
    end
end
s=p(1:n-z,:);
disp(s);
p=s;
n=n-z;
z=0;
for i=2:n
    for j=i:n
        if(s(i,2)==s(j,2) & s(i,3)==s(j,3) & i~=j)
            z=z+1;
            for k=j:n-1
                p(k,:)=p(k+1,:);
            end
            for k=2:n-1
                if(p(k,2)==s(j,1))
                    p(k,2)=s(i,1);
                end
                if(p(k,3)==s(j,1))
                    p(k,3)=s(i,1);
                end
            end
        end
    end
end
s=p(1:n-z,:);
disp(s);
