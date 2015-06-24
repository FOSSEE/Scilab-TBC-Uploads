

//example 14.7
//design a channel in alluvial soil using tractive force approach
clc;funcprot(0);
//given
Q=45;         //discharge
S=1/4800;     //bed slope
N=0.0225;     //rogosity coefficient
sigma=0.0035; //permissible tractive stress
s=1/2;        //side slope
gamma_w=9.81;  //unit weigth of water

R=sigma/(gamma_w*S);
V=R^(2/3)*S^0.5/N;
A=Q/V;
P=A/R;
y=poly([-49,28.61,-1.736],'x','c');
D=roots(y);
//we get D=14.539034 and 1.9413812 
//taking D=1.9413812 
D=1.9413812;
B=28.61-2.23*D;
B=round(B*100)/100;
D=round(D*100)/100;
mprintf("Width of channel section=%f m.",B);
mprintf("\nDepth of channel section=%f m.",D);

 
