disp("R=L/(q*Nd*μe*W*(a-(2*b)))");
L=10*10^-4;
q=1.6*10^-19;
Nd=10^16;
c=1500;  //say c=μe
W=100*10^-4;
d=2*10^-4;  //say d=(a-(2*b))
R=L/(q*Nd*c*W*d);
printf('\n The minimum value of the linear resistor is %fohm',R);