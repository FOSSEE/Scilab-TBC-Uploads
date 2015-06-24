//Harriot P.,2003,Chemical Reactor Design (I-Edition) Marcel Dekker,Inc. USA,pp 436
//Chapter-5 Ex5.1 Pg No. 185
//Title: Temperature Profiles for tubular reactor
//==========================================================================================================
clear
clc
clf
//INPUT
delta_H=-25000;//(kcal/mol) Enthalpy
D=2;//(cm)Diameter of Tubular Reactor 
C_A0=0.002;//(mol/cm3) Initial concentration of feed
k=0.00142;//(s-1) Rate Constant
E_by_R=15000;//(K-1)
rho=0.8;//(g/cm3)
c_p= 0.5;// (cal/g°C)
U=0.025;//(cal/sec cm2°C )
u=60;//(cm/s)


//CALCULATION
function diffeqn = Simul_diff_eqn(l,y,T_j)
    diffeqn(1) =(k*exp(E_by_R*((1/T_initial)-(1/y(2)))))*(1-y(1))/u;// Derivative for the first variable  
    diffeqn(2) =(C_A0*(k*exp(E_by_R*((1/T_initial)-(1/y(2)))))*(1-y(1))*(-1*delta_H)-U*(4/D)*(y(2)-T_j))/(u*rho*c_p) ; // Derivative for the second variable 
endfunction

// =======================================

T_j_data = [ 348 349 350 351];
m = length(T_j_data);
n = 1;
while n <= m 
T_j = T_j_data(n)
T_initial=340;// for rate constant
x0=0;
T0=344;
l0=0;
l=0:0.1E2:70E2; 
y = ode([x0;T0],l0,l,list(Simul_diff_eqn,T_j));
x_data(n,:) = y(1,:);
T_data(n,:) = y(2,:);
n = n + 1;
end
// ================================
scf(0)
plot(l,T_data(1,:),'r-',l,T_data(2,:),'b-',l,T_data(3,:),'k-',l,T_data(4,:),'g-')
xtitle('Temperature Profiles for a jacketed  tubular  reactor')
xlabel("Length (cm)")
ylabel("Temperature (K)")
legend(['348';'349';'350';'351']);

scf(1)
plot(l,x_data(1,:),'r-',l,x_data(2,:),'b-',l,x_data(3,:),'k-',l,x_data(4,:),'g-')
xtitle('Conversion for a jacketed  tubular  reactor');
xlabel("Length (cm)")
ylabel("Conversion")
legend(['348';'349';'350';'351']);

//OUTPUT
mprintf('\n The Temperature profiles for four feed temperatures are plotted');
mprintf('\n For T0:348 K  attains its maximum temperature at conversion of about 25%%-30%%');
mprintf('\n At T0:351 K the temperature increases by 6.5°C high senstivity that the reactor is nearing unstable');

//FILE OUTPUT
fid= mopen('.\Chapter5-Ex1-Output.txt','w');
mfprintf(fid,'\n The Temperature profiles for four feed temperatures are plotted.');
mfprintf(fid,'\n For T0:348 K  attains its maximum temperature at conversion of about 25%%-30%%');
mfprintf(fid,'\n At T0:351 K the temperature increases by 6.5°C high senstivity that the reactor is nearing unstable');
mclose(fid);

//===================================================END OF PROGRAM======================================================




