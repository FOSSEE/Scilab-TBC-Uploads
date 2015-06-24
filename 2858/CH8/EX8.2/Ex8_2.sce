//example 8.2
clc; funcprot(0);
c=0.9;
B=12.5;
Gamma2=4;
Fcd=1.138;
Fqd=1.107;
Nc=7.5;
Nq=4;
Ny=0;
q=0.428;
qtoe=2.44;
qu=c*Nc*Fcd+q*Nq*Fqd+1/2*Gamma2*B*Ny;
FSB=qu/qtoe;
if FSB>3 then
    printf("safe in bearing with FS=%.2f\n\n",FSB)
end

