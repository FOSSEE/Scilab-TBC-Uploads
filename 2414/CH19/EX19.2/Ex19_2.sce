clc;
close();
clear();
//page no 605
//prob no. 19.2
b=[0 23 62 8 43 16 71 47 19 61]
for i=1:10
    f9(i)=[b(i)+9]+2
    if f9(i)>79 then
        f9(i)=f9(i)-79
    end
    mprintf('\nFor i=%i ,b(i)=%i. Therefore.f9(%i)=[%i+9]mod(79)+2=%i',i,b(i),i,b(i),f9(i))
end
