//What will be the equivalent radius of bundle conductor having its part conductors 'r' on the periphery of circle  of dia'd' if the number of conductors is 2,3,4 ,6 ?

clear
clc;
r=poly(0,"r");
D11=r^1;
D12=2*r;
D14=4*r
D13=sqrt(16-4)*r;
Ds1=((1*2*2*sqrt(3)*4*2*sqrt(3)*2*2)^(1/7))*r;
Ds7=((2*1*2*2**2*2*2)^(1/7))*r;//we get this after Taking r outside the 1/7th root
Ds=((((1*2*2*sqrt(3)*4*2*sqrt(3)*2*2)^(1/7))^6)*((2*1*2*2**2*2*2)^(1/7)))^(1/7)*r;
Dseq=((.7788)^(1/7))*Ds;
disp(Dseq,"Dseq.= ");
