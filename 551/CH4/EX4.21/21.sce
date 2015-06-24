clc
Qv=90; //kJ
Qp=-95; //kJ
W=-18; //kJ
U_l=105; //kJ
W_lm=0;
Q_lm=90;
U_m=U_l+90;
dU_mn=Qp-W;
U_n=U_m+dU_mn;
dQ=Qv+Qp;
dW=dQ;
W_nl=dW-W;
disp("W_nl(in kJ)=")
disp(W_nl)
disp("U_l in kJ =")
disp(U_l)
disp("U_m in kJ =")
disp(U_m)
disp("U_n in kJ")
disp(U_n)