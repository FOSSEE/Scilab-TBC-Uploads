//define problem parameters
Nd=1e16*1e6;
d=0.75e-6;
W=10e-6;
L=2e-6;
eps_r=12;
Vd=0.8;
mu_n=8500*1e-4;
lambda=0.03;

//define physical constants
q=1.60218e-19; //electron charge
eps0=8.85e-12; //permittivity of free space

eps=eps_r*eps0;

// pinch-off voltage
Vp=q*Nd*d^2/(2*eps)

//threshold voltage
Vt0=Vd-Vp

//conductivity of the channel
sigma=q*mu_n*Nd

//channel conductance
G0=q*sigma*Nd*W*d/L

//define the range for gate source voltage
Vgs_min=-2.5;
Vgs_max=-1;
Vgs=Vgs_max:-0.5:Vgs_min;

//drain source voltage
Vds=0:0.01:5;

//compute drain saturation voltage
Vds_sat=Vgs-Vt0;

//first the drain current is taken into account the channel length modulation
for n=1:length(Vgs)
   if Vgs(n)>Vt0
      Id_sat=G0*(Vp/3-(Vd-Vgs(n))+2/(3*sqrt(Vp))*(Vd-Vgs(n))^(3/2));
   else
      Id_sat=0;
   end;
   
   Id_linear=G0*(Vds-2/(3*sqrt(Vp)).*((Vds+Vd-Vgs(n)).^(3/2)-(Vd-Vgs(n))^(3/2))).*(1+lambda*Vds);
   Id_saturation=Id_sat*(1+lambda*Vds);
   Id=Id_linear.*(Vds<=Vds_sat(n))+Id_saturation.*(Vds>Vds_sat(n));   
   plot(Vds,Id);
set(gca(),"auto_clear","off");
end;

//next the channel length modulation is not taken into account
for n=1:length(Vgs)
   if Vgs(n)>Vt0
      Id_sat=G0*(Vp/3-(Vd-Vgs(n))+2/(3*sqrt(Vp))*(Vd-Vgs(n))^(3/2));
   else
      Id_sat=0;
   end;
   
   Id_linear=G0*(Vds-2/(3*sqrt(Vp)).*((Vds+Vd-Vgs(n)).^(3/2)-(Vd-Vgs(n))^(3/2)));
   Id_saturation=Id_sat;
   Id=Id_linear.*(Vds<=Vds_sat(n))+Id_saturation.*(Vds>Vds_sat(n));   
   plot(Vds, Id);
end;

//computation of drain saturation current

Vgs=0:-0.01:-4;
Vds_sat=Vgs-Vt0;

Id_sat=G0*(Vp/3-(Vd-Vgs)+2/(3*sqrt(Vp))*(Vd-Vgs).^(3/2)).*(1+lambda*Vds_sat).*(1-(Vgs<Vt0));

plot(Vds_sat, Id_sat);

mtlb_axis([0 5 0 4]);
title('Drain current vs. V_{DS} plotted for different V_{GS}');
xlabel('Drain-source voltage V_{DS}, V');
ylabel('Drain current I_{D}, A');