//Page Number: 375
//Example 7.8
clc;
//Given
V0=1.8D+3; //V
I0=1.3; //A
Pin=70; //W
n=0.22;

//(i) Power generated
Pgen=n*I0*V0;
disp('W',Pgen,'Power generated:');

//(ii) Total RF power generated
Pt=Pin+Pgen;
disp('W',Pt,'Total RF power generated:');

//(iii) Power gain
G=Pt/Pin;
Gdb=10*log10(G);
disp('dB',Gdb,'Power Gain:');
