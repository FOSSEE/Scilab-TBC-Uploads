//The Gerchgorin circle
clc;
clear;
close();
format('v',9);
x = [0:.1:14];
plot2d(0,0,-1,"031"," ",[0,-5,14,5]);
plot(x,zeros(length(x),1));
A = [5 1 0;-1 3 1;-2 1 10];
disp(A,'A = ');
for i=1:3
   disp(A(i,i),'Centers are : ');
    radius = 0;
    for j=1:3
        if j~=i then
            radius = radius + abs(A(i,j));
        end
    end
    disp(radius,'Radius : ');
    xarc(A(i,i)-radius,radius,2*radius,2*radius,0,360*64);
end
disp('The figure indicates that 2 of the eigenvalues of A lie inside the intersected region of 2 circles, and the remaining eigen value in the other circle.');