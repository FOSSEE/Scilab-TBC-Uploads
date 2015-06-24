//Page Number: 4.25
//Example 4.29
clc;
//Given,
f1=108; //MHz
f2=157; //MHz

//(a) Image frequency overlaps RF band
fIF=12; //MHz

fL01=f1-fIF;
disp('MHz',fL01,'fL01');
fim1=fL01-fIF;
disp('MHz',fim1,'fim1');

fL02=f2-fIF;
disp('MHz',fL02,'fL02');
fim2=fL02-fIF;
disp('MHz',fim2,'fim2');

//Clearly image and RF band overlap
