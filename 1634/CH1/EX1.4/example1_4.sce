

//exapple 1.4 
clc; funcprot(0);
// Initialization of Variable
pi=3.14159;
latA=45;
p=(300/60)*pi/180;//side AB
b=(90-latA)*pi/180;//side PA
//calculation
a=acos(cos(p)*cos(b));//side BP
BC=a*180/pi-latA;
d=BC*1.852*60;
disp(d,"disatance of BC in (km):")
