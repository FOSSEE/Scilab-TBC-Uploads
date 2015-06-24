//Page Number: 142
//Example 3.4
clc;
//Given

[z]=[4 2;2 4];
[I]=[1 0;0 1];

//Scattering matrix
[s]={[z]-[I]}*inv({[z]+[I]});
disp([s],'Scattering Matrix:');

