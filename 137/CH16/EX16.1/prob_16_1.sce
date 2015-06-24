//page no 732
// example no 16.1.
//here generator matrix is given
clc;
G=[1 0 0 1 0 1;0 1 0 0 1 1;0 0 1 1 1 0];
d1=[1 1 1];
d2=[1 1 0];
d3=[1 0 1];
d4=[1 0 0];
d5=[0 1 1];
d6=[0 1 0];
d7=[0 0 1];
d8=[0 0 0];
    c1=d1*G;
    for i=1:6
    if c1(i)==2 then
        c1(i)=0;
    end
end
c2=d2*G;
    for i=1:6
    if c2(i)==2 then
        c2(i)=0;
    end
end
c3=d3*G;
    for i=1:6
    if c3(i)==2 then
        c3(i)=0;
    end
   end
c4=d4*G;
    for i=1:6
    if c4(i)==2 then
        c4(i)=0;
    end
end
c5=d5*G;
    for i=1:6
    if c5(i)==2 then
        c5(i)=0;
    end
end
c6=d6*G;
    for i=1:6
    if c6(i)==2 then
c6(i)=0;
    end
end
c7=d7*G;
    for i=1:6
    if c7(i)==2 then
        c7(i)=0;
    end
end
c8=d8*G;
    for i=1:6
    if c8(i)==2 then
        c8(i)=0;
    end
end
disp("code words are given as")
disp(c1);
disp(c2);

disp(c3)
disp(c4)
disp(c5);
disp(c6);

disp(c7);

disp(c8);
