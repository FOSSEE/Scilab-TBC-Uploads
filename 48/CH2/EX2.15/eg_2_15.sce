clear
clc
N=3;
s=['a' 'b' 'c'];        //set for which lattice should be defined
for i=2:2^3
    s(i,:)=s(1,:);
end
//defining 2nd level vertices of the lattice
for i=2:4
    s(i,i-1)='0';
end
//defining 3rd level vertices of the lattice
for i=5:6
    s(i,i-4)='0';
    s(i,i-3)='0';
end
s(7,1)='0';s(7,3)='0';
//defining the final level of vertices of the lattice
s(8,:)=['0' '0' '0'];
disp("1st level");
disp(s(1,:));
disp("2nd level");
disp(s(2,:));
disp(s(3,:));
disp(s(4,:));
disp("3rd level");
disp(s(5,:));
disp(s(6,:));
disp(s(7,:));
disp("4th level");
disp(s(8,:));