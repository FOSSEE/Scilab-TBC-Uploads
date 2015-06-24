//Initilization of variables
W1=15 //N //up
W2=60 //N //down
W3=10 //N //up
W4=25 //N //down
Lab=1.2 //m
Lac=0.4 //m
Lcd=0.3 //m
Ldb=0.5 //m
Lad=0.7 //m
Leb=0.417 //m //Leb=Lab-x
//Calculations
//(a) A single force
Ry=W1-W2+W3-W4 //N //take sum Fy=0
x=((-W2*Lac)+(W3*Lad)-(W4*Lab))/(Ry) //m
// (b) Single force moment at A
Ma=(Ry*x) //N-m
// Single force moment at B
Mb=W2*Leb //N-m
//Results
clc
printf('The reaction for single force (a) is %f N \n',Ry)
printf('The distance of Ry from A is %f m \n',x)
printf('The moment at A is %f N-m \n',Ma)
printf('The moment at B is %f N-m \n',Mb)
