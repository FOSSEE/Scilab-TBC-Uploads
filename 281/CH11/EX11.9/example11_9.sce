disp('chapter 11 ex11.9')
disp('given')
disp('design a single stage bandpass filter')
disp('voltage gain Av=1 and a pass band from 300Hz to 30kHz')
Av=1
f2=30000
f1=300
disp('select C2=1000pF')
C2=1000*10^(-12)
disp('Xc2=R2 at f2')
disp('R2=1/(2*%pi*f2*C2)')
R2=1/(2*%pi*f2*C2)
disp('ohms',R2)   //use 5.36kohm+or-1% standard value
disp('R3=R2=5.36kohm')    //use 5.6kohm standard value
disp('for Av=1,R1=R2=5.36kohm')
R1=5360
disp('C1=1/(2*%pi*f1*R1)')
C1=1/(2*%pi*f1*R1)
disp('farads',C1)  //standard value