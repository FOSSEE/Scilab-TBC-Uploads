// scilab Code Exa 9.4 axial turbine stage 3000 rpm 

d=1; // mean diameter of the impeller blade in m
r=d/2;
N=3e3; // rotor Speed in RPM
a_r(1)=1; // aspect ratio
a_r(2)=2;
a_r(3)=3;
alpha2=70; //  air angle at nozzle exit
alpha3=0;
beta_2=54; //  air angle at rotor entry
sigma=0.5*(sind(alpha2)); // blade to gas speed ratio
u=%pi*d*N/60;
c2=u/sigma;
cx=c2*(cosd(alpha2));
beta_3=beta_2;  //  air angle at rotor exit
phi=cx/u;
e_R=beta_2+beta_3; // Rotor deflection angle
zeeta_p_N=0.025*(1+((alpha2/90)^2)); // profile loss coefficient for nozzle
zeeta_p_R=0.025*(1+((e_R/90)^2)); // profile loss coefficient for rotor
for i=1:3
disp(a_r(i),"when Aspect ratio=")
zeeta_N=(1+(3.2/a_r(i)))*zeeta_p_N; // total loss coefficient for nozzle
zeeta_R=(1+(3.2/a_r(i)))*zeeta_p_R; // total loss coefficient for rotor
a=(zeeta_R*(secd(beta_3)^2))+(zeeta_N*(secd(alpha2)^2));
b=phi*(tand(alpha2)+tand(beta_3))-1;
c=(zeeta_R*(secd(beta_3)^2))+(zeeta_N*(secd(alpha2)^2))+(secd(alpha3)^2);
n_tt=inv(1+(0.5*(phi^2)*(a/b)));
disp("%",n_tt*1e2,"total-to-total efficiency is")
n_ts=inv(1+(0.5*(phi^2)*(c/b)));
disp("%",n_ts*1e2,"total-to-static efficiency is")
end
