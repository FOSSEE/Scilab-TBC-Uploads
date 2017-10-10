// Problem no 14.2,Page No.327

clc;clear;
close;
D=2 //m //External Diameter
d=1.5 //m //Internal Diameter
P=1600 //N/m**2 //N/m**2 //Wind Pressure
W=19200 //N/m**2 //Weight of masonry

//Calculations

//Let H be max height of dam

//W2=%pi*4**-1*(D**2-d**2)*H*W //weight of chimney
//W2=26400*H

//Eccentricrty
x=(D**2+d**2)*(8*D)**-1

//P2=H*D*P //Lateral thrust of wind on chimney
//P2=3200*H

//Now by using the relation we get P*W**-1=x*(H*2**-1)**-1
//After substituting values and Further simplifying we get
H=0.39*2*26400*3200**-1

//result
printf("The Height of Dam is %.2f",H);printf(" m")
