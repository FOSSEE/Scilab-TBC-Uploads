// To calculate sec. line voltage, line current and output va

clc;

disp('(a)Y/D conn');
V_LY=6600;
V_PY=V_LY/sqrt(3);
a=12;
V_PD=V_PY/a;
V_LD=V_PD;    disp(V_LD,'sec line voltage(V)');

I_PY=10;
I_PD=I_PY*a;
I_LD=I_PD*sqrt(3);    disp(I_LD,'sec. line current(A)');
r=sqrt(3)*V_LD*I_LD;    disp(r,'output rating(va)');

disp('(b)D/Y conn');
I_LD=10;
I_PD=I_LD/sqrt(3);
I_LY=I_PD*a;        disp(I_LY,'sec. line current(A)');
V_PD=6600;
V_PY=V_PD/a;
V_LY=V_PY*sqrt(3);    disp(V_LY,'sec line voltage(V)');
r=sqrt(3)*V_LY*I_LY;    disp(r,'output rating(va)');