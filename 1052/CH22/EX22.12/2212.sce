clc;
//Example 22.12
//Page no 311
printf("Example 22.12 page no 311\n\n")
//turpentine is being moved  from a large storage tank to a blender through a 700 ft pipeline
rho=62.4//density
SG=0.872//specific gravity of terpentine
rho_t=SG*rho//density of turpentine
v=12.67//av. velocity of the turpentine in the line,ft/s
z1=20//height of top surface in the storage tank above floor level,ft
z2=90//height of discharge end of pipe,ft
neta=0.74//efficiency of pump
W_s=401.9//average energy delivered by pump,ft/lbf/lb
g_c=32.174//grav.acc
L=700//length of pipeline
//from bernoulli eq.
h_f= neta*W_s - v^2/(2*g_c) - (z2-z1)//frictional loss  if there is no pressure drop
printf("\n frictional loss h_f =%f ft.lbf/lb",h_f);  
k_c=0.4//coeff. of contraction
k_e=0.9//coeff. of expansion
k_f=0.2//coeff. of bends and valve
//making equation(1) from the friction coeff. due to fittings between f and D,f=0.0293*D 
//making another equation(2) from Reynolds number in terms D ,R_e=582250*D
//from trial and error method we get D
D=0.184//diameter
S=%pi*D^2/4//cross sectional area
S=0.0266
q=v*S//volumetric flow rate 
printf("\n q=%f ft^3/s ",q);
m_dot=rho_t*q//mass flow rate
bhp =m_dot*W_s/(550*neta)//brake horse power
printf("\n brake horse power bhp=%f hp",bhp);




