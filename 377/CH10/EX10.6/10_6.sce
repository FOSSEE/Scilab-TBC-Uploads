W=2*10^-6;
Dp=1.25*10^-3;
Tp=10^-6;
Lp=sqrt(Dp*Tp);
a=(W^2)/(2*(Lp^2));  //to prove a<<1
printf('\n The value of (W^2)/(2*(Lp^2)) is %f which is <<1',a);
W=2*10^-6;
We=1*10^-6;
c=1/0.0010;
d=1/0.000010;
disp("γ=1/(1+((σn*W)/(σp*We)))");
b=1/(1+((c*W)/(d*We)));  //say γ=b
printf('\n The value of γ is %f',b);