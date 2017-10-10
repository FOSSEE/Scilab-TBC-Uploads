//Example 8 Page No: 1.86
//given
sr=2e6;//v/sec
vsat=15;//volt
//determine bandwidth 
format(9);
fmax=sr/(2*3.14*vsat);
bw=fmax*sqrt(2);//bandwidth=fmax*sqrt(2)
disp('Bandwidth = '+string(bw)+' Hz');//error in the book


