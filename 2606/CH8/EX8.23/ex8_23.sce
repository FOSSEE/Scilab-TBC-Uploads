//Page Number: 8.23
//Example 8.23
clc;
//Given,
// S=10D-8*(1-(|f|/10D+8));


//(a)Power contenet of output noise
//Bandwidth of 2MHz centered at 50MHz
//Therefore, first limits will be

x0=-51D+6;
x1=-49D+6;
P1=integrate('1+(f/10^8)','f',x0,x1);

//And,second limits will be

x2=49D+6;
x3=51D+6;

P2=integrate('1-(f/10^8)','f',x2,x3);

P=10D-8*(P1+P2);
disp('W',P,'Power content:');

