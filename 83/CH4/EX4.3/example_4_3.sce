//Taking Base value MVA and KVA
clear;clc;
mvab=645; //Base MVA in 3-phase
kvb=24; //Base KV,line-to-line

vl=24/kvb; //Load voltage
xs=1.2;
xs=(xs*mvab)/kvb^2; // xs converted to its pu

//since the generator is operating at full load & 0.9pf
pf_angle=acos(0.9);
Ia=1*(cos(pf_angle)-%i*sin(pf_angle)); //load current
//to find excitation emf
ef=vl+%i*xs*Ia;
delta=atand(imag(ef)/real(ef));//positive for leading
ef=abs(ef)*kvb; //pu to actual unit conversion
  if(delta>0) then lead_lag='leading';
   else lead_lag='lagging';
  end
printf('Excitation emf= %0.2f kV at an angle %0.3f (%s) \n\n',ef,delta,lead_lag);
//to find reactive power drawn by load
Q=vl*abs(imag(Ia));
Q=Q*mvab; //pu to actual unit conversion
printf('Reactive power drawn by laod= %d MVAR',Q);
