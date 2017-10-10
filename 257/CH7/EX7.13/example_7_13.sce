syms f J K s t

T=1/(J*(s^2+(f/J)*s+(K/J)))             //Q/I

omegaN=sqrt(K/J)
Mp=6     //given
zeta=0.667

omegaD=omegaN*sqrt(1-zeta^2)
Tp=%pi/omegaD
disp(Tp," Tp = ")

I=laplace('10',t,s)
Q=I*T
x=limit(s*Q,s,0);
disp(10/0.5," K = ")
disp(K/omegaN^2," J= ")
disp(zeta*(2*sqrt(K*J))," f = ")
