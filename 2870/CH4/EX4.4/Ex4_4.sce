clc;clear;
//Example 4.4

//given data
V1=0.05;
P1=200;
k=150;
A=0.25;

//calculations

//Part - a
V2=2*V1;
x2=(V2-V1)/A;//displacement of spring
F=k*x2;//compression force
P2=P1+F/A;//additional pressure is equivalent the compression of spring
disp(P2,'the final pressure inside the cylinder in kPa');

//Part - b
//work done is equivalent to the area of the P-V curve of Fig 4-10
W=(P1+P2)/2*(V2-V1);//area of trapezoid = 1/2 * sum of parallel sides * dist. b/w them
disp(W,'the total work done by the gas in kJ');

//Part - c
x1=0;//intial compression of spring
Wsp=0.5*k*(x2^2-x1^2);
disp(Wsp,'the fraction of this work done against the spring to compress it in kJ')
