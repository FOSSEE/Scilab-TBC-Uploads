

//example 16.14
//calculate to what extent discharge can be increased without changing bed slope
clc;funcprot(0);
//given
B=5;         //bed width
D=2;         //bed depth
S=1/1600;    //bed slope
n=0.015;     //manning n

A=B+2*D;     //area of lining
//let B1 and D1 be new  width and depth of bed
//for getting maximum discharge we diffrentiate Q and equating it to zero
//Q=S^0.5*B1D1^5/3/n
//we get
D1=45/16;
B1=9-2*D1;
Q1=S^0.5*B1*D1^5/3/n;
D1=round(D1*10000)/10000;
mprintf("new width of bed=%f m.",B1);
mprintf("\nnew depth of bed=%f m.",D1);
mprintf("\n maximum discharge=%f cumec.",Q1);
R=D;
V=R^(2/3)*S^0.5/n;
F=V/(9.81*D)^0.5;       //froud number
R=D1;
V=R^(2/3)*S^0.5/n;
F=V/(9.81*D1)^0.5;       //froud number
mprintf("\nFroud number is less than 1 in both case.\nHence,flow doesnot change from sub-critical to super critical.");
