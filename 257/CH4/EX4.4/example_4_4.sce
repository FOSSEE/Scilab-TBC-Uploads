syms V q L C R I phi

//T=J diff(diff(theta,t),t) + K*theta + B*diff(theta,t)

//F-V anolagy
T=V;
theta=q;
J=L;
K=1/C;
B=R;
disp("V= L*s*I + R*I + I/(s*C)")

//F-C anology

T=I;
theta=phi
disp("I= C*V*s + V/R + V/(s*L)")
