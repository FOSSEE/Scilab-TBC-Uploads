//gear trains
printf("Given \n inertia(J2)=0.05oz-in.-sec^2 \n frictional torque(T2)=2oz-in. \n N1/N2(r)=1/5")
J2=0.05;
disp(J2,"J2=")
T2=2;
disp(T2,"T2=")
r=1/5
disp(r,"N1/N2=")
printf("J1=(N1/N2)^2*J2 \n T1=(N1/N2)*T2")
J1=(r)^2*J2;
disp(J1,"The reflected inertia on side of N1=")
T1=(r)*T2
disp(T1,"The reflected coulumb friction is=")