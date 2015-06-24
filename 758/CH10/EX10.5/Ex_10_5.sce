//Example 10.5

clc;clear;close;
x=poly(0,'x');        //x=2^-2B
z=poly(0,'z');
H1=1/(1-0.9/z);
H2=1/(1-0.8/z);
H=H1*H2; 
pn=x/12;                  //Input Noise power

//Calculation of output noise for H1(z)
X1=H*horner(H,1/z)/z;
r1=roots(denom(X1));
rc1=coeff(denom(X1));
q1=[];s1=[];
for n=1:length(r1)                //Loop to separate poles inside the unit circle
    if (abs(r1(n))<1) then
        q1=[q1 r1(n)];
    else
        s1=[s1 r1(n)];
    end
end
P1=numer(X1)/rc1(length(rc1));
Q1=poly(q1,'z');
S1=poly(s1,'z');
I1=abs(residu(P1,Q1,S1));        //Residue Calculation
po1=pn*I1;                  //Output Noise power

//Calculation of output noise for H2(z)
X2=H2*horner(H2,1/z)/z;
r2=roots(denom(X2));
rc2=coeff(denom(X2));
q2=[];s2=[];
for n=1:length(r2)                //Loop to separate poles inside the unit circle
    if (abs(r2(n))<1) then
        q2=[q2 r2(n)];
    else    
        s2=[s2 r2(n)];
    end
end
P2=numer(X2)/rc2(length(rc2));
Q2=poly(q2,'z');
S2=poly(s2,'z');
I2=abs(residu(P2,Q2,S2));        //Residue Calculation
po2=pn*I2;                          //Output Noise power

po=po1+po2;
disp(pn,'Input Noise power');
disp(I1,'I1=');disp(I2,'I2=');
disp(po1,'Output Noise power for H1(z)');
disp(po2,'Output Noise power for H2(z)');
disp(po,'Total Output Noise power');