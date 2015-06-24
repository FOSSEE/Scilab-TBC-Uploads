clear
clc
N=4;
//defining all the partial ordered sets
s(1,:)=[1 0];
s(2,:)=[0 1];
s(3,:)=[0 0];
s(4,:)=[1 1];
//Finding 
a=1;b=1;
for i=1:1:N            //sorting based on the level
    for j=i:1:N
        if(i~=j)
            u=s(i,1)+s(i,2);
            v=s(j,1)+s(j,2);
            if(u<v)
                temp(1)=s(i,1);
                temp(2)=s(i,2);
                s(i,1)=s(j,1);
                s(i,2)=s(j,2);
                s(j,1)=temp(1);
                s(j,2)=temp(2);
            end
        end
    end
end
// displaying in the form of hasse graph form
disp("1st stage of Hasse diagram");
disp(s(1,:));
disp("2nd stage of Hasse diagram");
disp(s(2,:));
disp(s(3,:));
disp("3rd stage of Hasse diagram");
disp(s(4,:));