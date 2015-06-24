pathname=get_absolute_file_path('24_2.sce')
filename=pathname+filesep()+'24_2data.sci'
exec(filename)
clear
P=[2*L11 -2*L11 0;0 -L11 L11;2*A2 2*(A1+A2) 0],X=[L1;L2;440000];
q=inv(P)*X;
//actual X is X=[L1;L2;-L2*L11],it leads to wrong answers than book;
Sy1=-(q(2))*L11;
Px4= 2*A1*-(q(2))/L11;
Py2= Px4*tan(theta);
q1= (Sy1- 2*Py2)/L11;
P2= (Px4*Px4 +Py2*Py2)^0.5;
P5= 2*((A1+A22)*(-q(2)) - A21*q(1))/L12;
q2= ((-q(2))*L11 +(-q(2))*0.5*(L12-L11) -q(1)*0.5*(L12-L11))/L12;
q31= (q2*L12 +L2)/L12;
M3= 2*((A1+A2)*(-q(2)) -A2*q(1))+ L2*L11;
Px1=M3/L11;
Py1=Px1*tan(theta);
P1=(Px1*Px1+ Py1*Py1)^0.5;
q32=((L2+ L11*(-q(2))) -(2*Py1))/L11;
printf("\nq12: %f N/mm",q(1));
printf("\nq23: %f N/mm",q(2));
printf("\nq31: %f N/mm",q(3));
printf("\nP2= P4= %f N",P2);
printf("\nP5= P6= %f N",P5);
printf("\nP1= P3= %f N",P1);
printf("\nq1: %f N/mm",q1);
printf("\nq2: %f N/mm",q2);
printf("\nq3: %f N/mm",q31);
printf("\nshear flow q3 in the web: %f N/mm",q32)