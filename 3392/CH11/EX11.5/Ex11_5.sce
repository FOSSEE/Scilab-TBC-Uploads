clc
// initialization of variables
clear
p1=300 //MPa
SF=1.75
S_rr=SF*p1
S_th=SF*325-550.2 //Values are obtained from running Ex11_3.sce
Y1=1/sqrt(2)*sqrt((S_th-S_rr)^2+S_rr^2+S_th^2)
S_rr1=37.5
S_rre=-189.1
S_th1=62.5
S_the=315.1
// ABove values are obtained from running the codes Ex11_1 and Ex11_3.sce
S_rr=-SF*S_rr1+S_rre
S_th=SF*S_th1+S_the
Y2=1/sqrt(2)*sqrt((S_th-S_rr)^2+S_rr^2+S_th^2)
if(Y2>Y1)
    Y=Y2
end
printf(' Y = %.1f MPa',Y)
