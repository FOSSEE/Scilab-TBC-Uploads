// scilab Code Exa 4.3 Calculations on Steam Turbine Plant 

p1=82.75; // Turbine Inlet Pressure in bar
T1=510;  // Turbine Entry Temperature in Degree Celsius
pc=0.042;  // Condenser Pressure in bar
H=3420;
n_e=0.85;
gamma=1.4;
n_st1=0.85;

p2=22.75;
// for regenerative cycle
hs(1)=121.4; // from steam tables and mollier chart
p(6)=p2; // pressure at bleed point 1
Hs(6)=3080; // Enthalpy of steam at bleed point 1
h1s=931;
hs(6)=h1s; // Enthalpy of water at bleed point 1
H_22=H-(n_st1*(H-h1s));

p(5)=10.65; // pressure at bleed point 2
Hs(5)=2950; // Enthalpy of steam at bleed point 2
hs(5)=772; // Enthalpy of water at bleed point 2

p(4)=4.35; // pressure at bleed point 3
Hs(4)=2730; // Enthalpy of steam at bleed point 3
hs(4)=612; // Enthalpy of water at bleed point 3

p(3)=1.25; // pressure at bleed point 4
Hs(3)=2590; // Enthalpy of steam at bleed point 4
hs(3)=444; // Enthalpy of water at bleed point 4

p(2)=0.6; // pressure at bleed point 5
Hs(2)=2510; // Enthalpy of steam at bleed point 5
hs(2)=360; // Enthalpy of water at bleed point 5

m=1;
h_c=121.4;
x=0.875;
disp(x,"(a)the final state at point C is")
for i=2:6
alpha(i)=(Hs(i)-hs(i-1))/(Hs(i)-hs(i));
m=m*alpha(i);    
end
disp("kg",m,"(b)The mass of steam raised per kg of steam reaching the condenser is")
// part(c) thermal efficiency with feed heating
H_c=2250;
h_n=hs(6);
n_th=1-((H_c-h_c)/(m*(H-h_n)));
hr_t=3600/n_th;
//(c) the improvement in thermal efficiency and heat rate
c=H-H_c;
d=H-h_c;
n_R=(H-H_c)/(H-h_c);
hr_R=3600/n_R;
deln_th=(n_th-n_R)/n_R;
disp ("%",deln_th*100,"(c)therefore, the improvement in efficiency is")
delhr_t=(hr_R-hr_t)/hr_R;
disp ("%",delhr_t*100," and, the improvement in heat rate is")

// part(d) decrease of steam flow to the condenser per kWh due to feed heating
q_s=m*(H-h_n);
q_r=H_c-h_c;
w_t=q_s-q_r;
wt_m=w_t/m;
sf_r=3600/wt_m;
s_c=sf_r/m;
// without feed heating
wt_f=H-H_c;
m_wf=3600/wt_f;
sr_c=(m_wf-s_c)/m_wf;
disp ("%",sr_c*100,"(d)the decrease in steam reaching the condenser is")
disp("comment: the calculation for the improvement in efficiency is wrong in the book.")
   
