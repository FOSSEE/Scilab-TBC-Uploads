// PID tuning through GMVC law
// 11.17

// function [Kc,tau_i,tau_d,L] = gmvc_pid(A,B,k,T,Ts)
// Determines p,i,d tuning parameters using GMVC
// Plant model: Integrated white noise
// A, B in discrete time form

function [Kc,tau_i,tau_d,L] = gmvc_pid(A,B,k,T,Ts)

dA = length(A)-1; dB = length(B)-1;
dT = length(T)-1;
if dA > 2,
   disp('degree of A cannot be more than 2')
   exit
elseif dB > 1,
   disp('degree of B cannot be more than 1')
   exit
elseif dT > 2,
   disp('degree of T cannot be more than 2')
   exit
end
delta = [1 -1]; ddelta = 1;

[Adelta,dAdelta] = polmul(A,dA,delta,ddelta);

[Q,dQ,P,dP] = ...
xdync(Adelta,dAdelta,B,dB,T,dT);
PAdelta = P(1)*Adelta;

[zk,dzk] = zpowk(k);
[E,degE,F,degF] = ...
xdync(PAdelta,dAdelta,zk,dzk,P,dP);
nu = P(1)*E(1)*B(1);
Kc = -1/nu*(F(2)+2*F(3));
tau_i = -(F(2)+2*F(3))/(F(1)+F(2)+F(3))*Ts;
tau_d = -F(3)/(F(2)+2*F(3))*Ts;
L(1) = 1+Ts/tau_i+tau_d/Ts;
L(2) = -(1+2*tau_d/Ts);
L(3) = tau_d/Ts;
L = Kc * L';
endfunction;
