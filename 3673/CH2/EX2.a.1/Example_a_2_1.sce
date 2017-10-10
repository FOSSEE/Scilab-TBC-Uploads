//Example 2_1 page no:85
clc;
delta=[3,-1,-1,
        -1,3,-1,
        -1,-1,3];
delta1=[10,-1,-1,
        5,3,-1,
        5,-1,3];
delta2=[3,10,-1,
        -1,5,-1,
        -1,5,3];
delta3=[3,-1,10,
        -1,3,5,
        -1,-1,5];
ia=det(delta1)/det(delta);
ib=det(delta2)/det(delta);
ic=det(delta3)/det(delta);
I=ia;
I1=ia-ib;
I2=ib;
I3=ib-ic;
I4=ic;
I5=ia-ic;
disp(I,"the branch current I is (in A)");
disp(I1,"the branch current I1 is (in A)");
disp(I2,"the branch current I2 is (in A)");
disp(I3,"the branch current I3 is (in A)");
disp(I4,"the branch current I4 is (in A)");
disp(I5,"the branch current I5 is (in A)");
