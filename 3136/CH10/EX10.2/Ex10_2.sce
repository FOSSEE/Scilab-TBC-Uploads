clear all; clc;

disp("From psi=(g*H)/(omega^2*D^2)  and N=30*omega/pi we get N=172.7/(psi^0.5)")
disp("Also from phi=Q/(omega*D^3) and pi=Ps/(rho*omega^3*D^5) we get Q=0.353*phi*N and Ps=0.0087*N^3*pi")
disp("Pick the points along 80% gate opening curve,read the values for phi,psi, and efficiency from figure 10.14")

phi=[0.158 0.151 0.14 0.127 0.108 0.092 0.076 0.066];
psi= [0.093 0.083 0.071 0.06 0.048 0.04 0.03 0.025];
E= [55 56.5 58 62.5 69 71.5 67.5 60];//efficiency
pai= [0.0078 0.0067 0.0058 0.0045 0.0034 0.0025 0.0015 0.001];

N = zeros(1,length(phi));
Ps = zeros(1,length(phi));
Q = zeros(1,length(phi));

for i = 1: length(phi)
   

    N(i) = 172.7/sqrt(psi(i));
    Ps(i) = 0.0087*N(i)^3*pai(i)*10^-3;
    Q(i) = 0.353*phi(i)*N(i);
end

disp("    phi     psi      eff(%)   pai        N(rpm)      Ps(mw)       Q(m^3/s)")

table = [phi' psi' E' pai' N' Ps' Q'];
disp(table)

plot(N,Ps,'o',N,Q,'d',N,E,'s')
legend("Ps (mw)","Q (m^3/s)","Eff (%)",-1)
xlabel("N (rpm)")
ylabel("Ps (mW), Q (m^3/s) , eff (%)")
set(gca(),"grid",[1 1])


