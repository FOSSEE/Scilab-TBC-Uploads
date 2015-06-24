// To compute all the currents and voltages in all windings of Y/D transformer

clc;

S=complex(500,100);        //load is 500MW and 100MVar
s=abs(S);
r=s/3;        //MVA rating of each single ph transformer

V1=22;        //D side
V2=345;        //Y side
a=V2/(sqrt(3)*V1);        //voltage rating of each single phase
disp('Y side');
V_A=(V2/sqrt(3))*complex(cosd(0),sind(0));
V_B=(V2/sqrt(3))*complex(cosd(-120),sind(-120));
V_C=(V2/sqrt(3))*complex(cosd(-240),sind(-240));

V_AB=V_A-V_B;    disp(V_AB,'V_AB(V)');
V_BC=V_B-V_C;    disp(V_BC,'V_BC(V)');
V_CA=V_C-V_A;    disp(V_CA,'V_CA(V)');

IA=S/(3*V_A);    disp(IA,'IA(A)');
IB=S/(3*V_B);    disp(IB,'IB(A)');
IC=S/(3*V_C);    disp(IC,'IC(A)');
disp('D side');
V_ab=V_A/a;    disp(V_ab,'V_ab(V)');
V_bc=V_B/a;    disp(V_bc,'V_bc(V)');
V_ca=V_C/a;    disp(V_ca,'V_ca(V)');

I_ab=a*IA;
I_bc=a*IB;
I_ca=a*IC;
Ia=I_ab-I_bc;    disp(Ia,'Ia(A)');
Ib=I_bc-I_ca;    disp(Ib,'Ib(A)');
Ic=I_ca-I_ab;    disp(Ic,'Ic(A)');
