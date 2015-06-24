clc;
clear;
N=4;
//state table of the machine
s=[ 'PS' 'x=0' 'x=1';
    'A' 'A' 'B';
    'B' 'C' 'B';
    'C' 'A' 'D';
    'D' 'C' 'B'];

k=1;l=2;m=1;n=1;
f(k,4)='ABCD';
k=k+1;
for i=2:max(size(s(:,1)))
    for j=i:max(size(s(:,1)))
        if(s(i,2)==s(j,2) & i~=j)
            f(k,l)=strcat([s(i,1) s(j,1)]);
            l=l+4;
            if(s(i,2)==s(j,2))
                g(n,m)=s(i,2);
                g(n,m+1)='-';
                m=m+2;
            else
                g(n,m)=s(i,2);
                g(n,m+1)=s(j,2);
                g(n,m+2)='-';
                m=m+3;
            end
            if(s(i,3)==s(j,3))
                g(n,m)=s(i,3);
                g(n,m+1)='-';
                m=m+2;
            else
                g(n,m)=strcat([s(i,3) s(j,3)]);
                g(n,m+1)='-';
                m=m+2;
                for z=2:max(size(s(:,1)))
                    if(s(z,3)==s(z,1))
                        h(1,3)=s(z,2);
                        h(1,5)=s(z,3);
                    end
                end
             end
        end
    end
end
disp("Synchronizing tree for Machine M3 is ")
disp(f);
disp(g);
disp(h);