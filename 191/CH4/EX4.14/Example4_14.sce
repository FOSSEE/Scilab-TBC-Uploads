//Redduction to upper Hessenberg form
clc;
clear;
close();
format('v',7);
A1 = [4 2 1 -3;2 4 1 -3;3 2 2 -3;1 2 1 0];
disp(A1, 'A = ' );
//the element with largest modulus below diagonal in first column need to be at the top and then similarly for column 2
A1=gsort(A1,'lr');
temp = A1(:,3);
A1(:,3) = A1(:,2);
A1(:,2) = temp;
M1 = eye(4,4);
M1(3,2) = A1(3,1)/A1(2,1);
M1(4,2) = A1(4,1)/A1(2,1);
A2 = inv(M1)*A1*M1;
disp(A2,M1, 'M1 and A2 : ')
A2=gsort(A2,'lr');
temp = A2(:,3);
A2(:,3) = A2(:,4);
A2(:,4) = temp;
M2 = eye(4,4);
M2(4,3) = A2(4,2)/A2(3,2);
A3 = inv(M2)*A2*M2;
disp(M2,'M2 = ');
disp(A3,'Upper Hessenberg Matrix :')


//for i=2:n
//    M =eye(4,4);
//    for j=i+1:n
//        M(j,i) = A(j,)
//    end
//end