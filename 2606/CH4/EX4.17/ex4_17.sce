//Page Number: 4.18
//Example 4.17
clc;
//Given
fm=2D+3; //Hz
delf=5D+3; //Hz

//(a) Bandwidth of modulated signal
B=delf/fm;

fb=2*(B+1)*fm;
disp('Hz',fb,'Bandwidth');

//(b)Max. frequency deviation and Bandwidth of new signal
//Given
fm1=fm-(1D+3);
delf1=3*delf;

B1=delf1/fm1;

fd=B1*fm1;
disp('Hz',fd,'Maximum frequency deviation');

fb1=2*(B1+1)*fm1;
disp('Hz',fb1,'Bandwidth');
