clear;
clc;
format('v',7);
P=[2,0,-1];
Q=[2,-1,2];
R=[2,-3,1];
S=P+Q;
T=P-Q;
U1=S(1,2)*T(1,3)-S(1,3)*T(1,2);
U2=S(1,3)*T(1,1)-S(1,1)*T(1,3);
U3=S(1,1)*T(1,2)-S(1,2)*T(1,1);
U=[U1 U2 U3];
disp(U,'(P+Q)*(P-Q)=')
V1=R(1,2)*P(1,3)-R(1,3)*P(1,2);
V2=R(1,3)*P(1,1)-R(1,1)*P(1,3);
V3=R(1,1)*P(1,2)-R(1,2)*P(1,1);
V=[V1 V2 V3];
X=(Q(1,1)*V(1,1)+Q(1,2)*V(1,2)+Q(1,3)*V(1,3));
disp(X,'Q.R*P')
W1=Q(1,2)*R(1,3)-Q(1,3)*R(1,2);
W2=Q(1,3)*R(1,1)-Q(1,1)*R(1,3);
W3=Q(1,1)*R(1,2)-Q(1,2)*R(1,1);
W=[W1 W2 W3];
Y=(W(1,1)*P(1,1)+W(1,2)*P(1,2)+W(1,3)*P(1,3));
disp(Y,'P.Q*R')
det_W=(W(1,1)^2+W(1,2)^2+W(1,3)^2)^.5;
det_Q=(Q(1,1)^2+Q(1,2)^2+Q(1,3)^2)^.5;
det_R=(R(1,1)^2+R(1,2)^2+R(1,3)^2)^.5
sineoftheta=(det_W/(det_Q*det_R));
disp(sineoftheta,'sin of theta=')
Z1=P(1,2)*W(1,3)-P(1,3)*W(1,2);
Z2=P(1,3)*W(1,1)-P(1,1)*W(1,3);
Z3=P(1,1)*W(1,2)-P(1,2)*W(1,1);
Z=[Z1 Z2 Z3];
disp(Z,'P* Q*R=')
disp(W/det_W,'Unit Vector Perpendicular to Q & R')
q=Q/det_Q;
C=(P(1,1)*q(1,1)+P(1,2)*q(1,2)+P(1,3)*q(1,3));
disp(C*q,'Component of P along Q');
