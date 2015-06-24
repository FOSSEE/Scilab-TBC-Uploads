// scilab Code Exa 14.3 upstream guide vanes
beta2=86; // rotor blade air angle at inlet in degree
dh=0.3; // hub diameter in m
dt=0.6; // tip diameter in m
N=960; // rotor Speed in RPM
phi=0.245; // flow coefficient
T1=316;  // in Kelvin
p1=1.02; //Initial Pressure in bar
R=287;
n_o=0.647; // overall Efficiency of the drive
A=%pi*((dt^2)-(dh^2))/4;
d=0.5*(dt+dh);
u=%pi*d*N/60;
cx=phi*u;
Q=cx*A;
ro=(p1*1e5)/(R*T1);

// part(i) static pressure rise in the rotor and stage
delh0_st=(u^2)*((phi*(tand(beta2)))-1);
delp0_st=ro*delh0_st;
disp("mm W.G.",delp0_st/9.81,"(i)static pressure rise in the stage is")
beta3=atand(u/cx);
w2=cx/(cosd(beta2));
w3=cx/(cosd(beta3));
delp_r=0.5*ro*((w2^2)-(w3^2));
disp("mm W.G.",delp_r/9.81,"and the static pressure rise in the rotor is")

// part(ii) the stage pressure coefficient and degree of reaction
shi=2*((phi*(tand(beta2)))-1);
disp(shi,"(ii)stage pressure coefficient is")
DOR=0.5*((phi*(tand(beta2)))+1);
disp("%",DOR*1e2,"and the degree of reaction is") 

// part(iii) the blade air angle at the rotor exit and the air angle at the UGV exit
disp("degree",beta3,"(iii)the blade air angle at the rotor exit beta3=")
cy2=(cx*tand(beta2))-u;
alpha2=atand(cy2/cx);
disp("degree",alpha2,"and the air angle at the UGV exit alpha2=")

// part(iv) Power required to drive the fan
m=ro*Q;
P=m*delh0_st/n_o;
disp("kW",P/1000,"(iv)Power required to drive the fan is")
