//Example 2_3 page no:87
clc;
delta3=[360,-2,-1.5,
        -60,9,-1,
        0,-1,10.5];
delta5=[15.5,-2,360,
        -2,9,-60,
        -1.5,-1,0];
delta=[15.5,-2,-1.5,
      -2,9,-1,
      -1.5,-1,10.5];
I3=det(delta3)/det(delta);
I5=det(delta5)/det(delta);
I=I3-I5;
disp(I,"the current I in the loop is (in A)");
