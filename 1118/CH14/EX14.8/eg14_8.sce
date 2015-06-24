clear;
clc;


n=3;
m=3;
y=zeros(n,m);
y(1,2)=(-(%i)*3);
y(1,3)=(-(%i)*4);
y(2,3)=(-(%i)*5);

for i=1:1:n
  for j=1:1:m
      y(j,i)=(y(i,j)+y(i,j))/2;
     
      end
end
Y=y;
for i=1:1:n
   for j=1:1:m
       if (i==j) then
           for k=1:1:n
           y(i,i)=y(i,i)+Y(j,k);
           end
       else
           y(i,j)=y(i,j)*(-1);
       end
   end
end

v=[1.02 1 1];

alpha=1.6;

del=[0 0 0];
pl=[0 50 60];
ql=[0 25 30];
pg=[0 25 0];
qg=[0 15 0];
bmva=100;
p2=(pg(2)-pl(2))/bmva;
q2=(qg(2)-ql(2))/bmva;

p3=(pg(3)-pl(3))/bmva;
q3=(qg(3)-ql(3))/bmva;

p=[0 p2 p3];
q=[0 q2 q3];
for i=1:1:2
    v1=zeros(1,3);
    v2=v;
    for j=2:1:3
        for k=1:1:3
            if (k~=j) then
                v1(j)=v1(j)-y(j,k)*v(k);
                
            end
            
        end
        v(j)=(1/y(j,j))*((p(j)-(%i)*q(j))/conj(v(j))+v1(j));
        delv(j)=v(j)-v2(j);
        v(j)=v2(j)+alpha*delv(j);
        
    end
printf("The voltages at the end of:%d iteration are",i);
        disp(v)
end
