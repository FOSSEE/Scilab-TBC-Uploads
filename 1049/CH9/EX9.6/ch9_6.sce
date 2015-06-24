clc
clear
V=230;
R=3;//ohm
X_L=5;//ohm
a=120;//firing angle delay
phi=atand(X_L/R);
b=0;
i=1;
while i>0;
    LHS=sind(b-a);
    RHS=sind(a-phi)*exp(-(R/X_L)*(b-a)*%pi/180);
    if abs(LHS-RHS)<=.01;
        B=b;
        i=2;
        break;
    end
    b=b+.1   
end
printf("extinction angle=%.1f deg",B);//answer in the book is wrong as formulae for RHS is wrongly employed
V_or=sqrt(2)*V*sqrt((1/(2*%pi))*((B-a)*%pi/180+(sind(2*a)-sind(2*B))/2));
printf("\nrms value of output voltage=%.2f V",V_or);//answer do not match due to wrong B in book