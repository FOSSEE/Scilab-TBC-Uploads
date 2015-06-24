clc;
clear;
function y=f(F,L,E,I)
    y=(F*(L^4))/(8*E*I)
endfunction
Fbar=50;//lb/ft
Lbar=30;//ft
Ebar=1.5*(10^8);//lb/ft^2
Ibar=0.06;//ft^4
deltaF=2;//lb/ft
deltaL=0.1;//ft
deltaE=0.01*(10^8);//lb/ft^2
deltaI=0.0006;//ft^4
ybar=(Fbar*(Lbar^4))/(8*Ebar*Ibar);
function y=f1(F)
    y=(F*(Lbar^4))/(8*Ebar*Ibar)
endfunction
function y=f2(L)
    y=(Fbar*(L^4))/(8*Ebar*Ibar)
endfunction
function y=f3(E)
    y=(Fbar*(Lbar^4))/(8*E*Ibar)
endfunction
function y=f4(I)
    y=(Fbar*(Lbar^4))/(8*Ebar*I)
endfunction

deltay=abs(derivative(f1,Fbar))*deltaF+abs(derivative(f2,Lbar))*deltaL+abs(derivative(f3,Ebar))*deltaE+abs(derivative(f4,Ibar))*deltaI;

disp(ybar+deltay,"and",ybar-deltay,"The value of y is between:")
ymin=((Fbar-deltaF)*((Lbar-deltaL)^4))/(8*(Ebar+deltaE)*(Ibar+deltaI));
ymax=((Fbar+deltaF)*((Lbar+deltaL)^4))/(8*(Ebar-deltaE)*(Ibar-deltaI));
disp(ymin,"ymin is calculated at lower extremes of F, L, E, I values as =")
disp(ymax,"ymax is calculated at higher extremes of F, L, E, I values as =")
