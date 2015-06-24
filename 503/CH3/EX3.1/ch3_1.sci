// To determine no load power factor,core loss current and magnetising current
//  and no load ckt parameters of transformer

clc;
Pi=50;
V1=230;
Io=2;
pf=Pi/(V1*Io);disp(pf,'no load power factor');
Im=Io*sind(acosd(pf));disp(Im,'magnetising current(A)');
Ii=Io*pf;disp(Ii,'core loss current(A)');
Gi=Pi/V1^2;disp(Gi,'Gi(mho)');
Bm=Im/V1;disp(Bm,'Bm(mho)');