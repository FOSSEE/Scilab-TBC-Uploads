//clear//
clear;
clc;

//Example 30.4
//Given
D = 2; //[cm]
Vbar = 150; //[cm/s]
rho = 1; //[g/cm^3]
mu = 0.01; //[g/cm-s]
Dv = 4*10^-7; //[cm^2/s]

//Solution
//(a)
Nre = Vbar*D*rho/mu;
Nsc = mu/(rho*Dv);
//Using Eq.(21.55)
Nsh = 0.0096*Nre^0.913*Nsc^0.346;
kc = Nsh*Dv/D; //[cm/s]
pi = poly([0,4.4*10^-3,-1.7*10^-6,7.9*10^-8],'c',"coeff");
//For
c1 = 10; //[g/L]
v = 10^-3; //[cm/s]
//Using Eq.(30.53)
cs = c1*exp(v/kc); //[g/L]
deltaPi = horner(pi,cs);
Qm = 250/36000; //[cm/s-atm]
//Using Eq.(30.50)
deltaP = v/Qm+deltaPi; //[atm]
//Using Eq.(30.53)
cs = 400;
vmax = kc*log(cs/c1); //[cm/s]
deltaP = vmax/Qm+horner(pi,cs); //[tm]
c = [10,20,40];
V=[];
deltaP=[];
for j = 1:length(c)
c1 = c(j);
i = 1;
vmax = kc*log(cs/c1)*10^4;
h = (vmax-1)/1000;
  for v = 1:h:vmax
     cs = c1*exp(v*10^-4/kc); //[g/L]
     deltaPi = horner(pi,cs); //[atm]
     deltaP(j,i) = v*10^-4/Qm+deltaPi; //[atm]
     V(j,i) = v*10^-4;
     i = i+1;
   end
end  
V = V*36000;
for l=1:length(c)
  figure(1)
  plot2d(deltaP(l,:),V(l,:),style=l);
  xgrid();
  xlabel('deltaP (atm)');
  ylabel('Permeate flux (L/m^2-h)');
  title('Effective pressure drop and concentration on flux')
  legend('Cf=10,','Cf=20','Cf=40');
end

//(b)
Qmb =  Qm/5; //[cm/s-atm]
vb = 10^-3; //[cm/s]
c = 40; //[g/L]
c1 = 40;
csb = c1*exp(vb/kc);
deltaPi = horner(pi,csb);
deltaPb = vb/Qmb+deltaPi;
disp('The largest effect of the lower membrane permeability is a 30 percent reduction in low pressure drop');
i = 1;
vmax = kc*log(400/c1)*10^4;
h = (vmax-1)/1000;
for vb = 1:h:vmax
     csb = c1*exp(vb*10^-4/kc); //[g/L]
     deltaPi = horner(pi,csb); //[atm]
     deltaPb(i) = vb*10^-4/Qmb+deltaPi; //[atm]
     Vb(i) = vb*10^-4;
     i = i+1;
end
Vb = Vb*36000; 
plot2d(deltaPb,Vb, style = l+1)
legend('Cf=10,','Cf=20','Cf=40','Cf = 40(Qm = 250/5)' );
   
