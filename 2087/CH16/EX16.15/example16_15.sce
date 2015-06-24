

//example 16.15
//calculate maximum carrying capacity of canal
//area to be irrigated
clc;funcprot(0);
//given
B=5;          //bed width
D=2.5;        //bed depth
s=1.5;        //side slope
S=1/1000;     //bed slope
n=0.016;       //manning n
k=10;         //kor period
d=150;        //field irrigation requirement   

theta=acot(s);
A=B*D+D^2*(theta+1/tan(theta));
P=B+2*D*(theta+1/tan(theta));
R=A/P;
Q=A*R^(2/3)*S^0.5/n;
V=Q*k*24*3600;   //volum of water supply by channel
A=V*10/(d*10000);
Q=round(Q*100)/100;
A=round(A)*100;
mprintf("maximum carrying capacity of canal=%f cumec.",Q);
mprintf("\nArea to be irrigated=%f hectares.",A);
