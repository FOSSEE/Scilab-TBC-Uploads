//Page Number: 4.17
//Example 4.14
clc;

//Given
delf=100D+3; //Hz
fc=20D+6; //Hz

//As B=delf/fm;
//(a) fm1=1D+3hz
disp('Part a')
fm1=1D+3; //Hz
B1=delf/fm1;
disp(B1,'Modulation Index');

fb1=2*delf;
disp('Hz',fb1,'Bandwidth');

//(b) fm2=100D+3hz
disp('Part b')
fm2=100D+3; //Hz
B2=delf/fm2;
disp(B2,'Modulation Index');

fb2=2*(B2+1)*fm2;
disp('Hz',fb2,'Bandwidth');

//(c) fm3=500D+3hz
disp('Part c')
fm3=500D+3; //Hz
B3=delf/fm3;
disp(B3,'Modulation Index');

fb3=2*fm3;
disp('Hz',fb3,'Bandwidth');



