//Example 10.2

clc;clear;close;
z=poly(0,'z');
H=0.5*z/(z-0.5);
B=8; 
pn=2^(-2*B)/12;          //Noise power
X=H*horner(H,1/z)/z;
r=roots(denom(X));
rl=length(r);
rc=coeff(denom(X))
q1=[];q2=[];
for n=1:rl                //Loop to separate poles inside the unit circle
    if (abs(r(n))<1) then
        q1=[q1 r(n)];
    else
        q2=[q2 r(n)];
    end
end
P=numer(X)/rc(length(rc));
Q1=poly(q1,'z');
Q2=poly(q2,'z');
I=residu(P,Q1,Q2);        //Residue Calculation
po=pn*I;                  //Output Noise power
disp(pn,'Input Noise power');
disp(po,'Output Noise power');