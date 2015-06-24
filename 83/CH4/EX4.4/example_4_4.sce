//Taking Base value MVA and KVA
clear;clc;
global mvab
mvab=645; //Base MVA in 3-phase
kvb=24; //Base KV,line-to-line
vt=24/kvb; //Terminal voltage
xs=1.2;
xs=(xs*mvab)/kvb^2; // xs converted to its pu

//since the generator is operating at full load & 0.9pf
pf_angle=acos(0.9);
Ia=1*(cos(pf_angle)-%i*sin(pf_angle)); //load current
//to find excitation emf
ef=vt+%i*xs*Ia;
ef=abs(ef);
P=1*0.9; //at Full load

/////// writing an inline function /////////////////
function [pf,lead_lag,Q]=excitation_change(P,ef,vt,xs)
sin_delta=(P*xs)/(ef*vt);
delta=asind(sin_delta);
ef0=ef*(cosd(delta)+(%i*sind(delta)));
Ia=(ef0-vt)/(%i*xs);
Ia_mag=abs(Ia);Ia_ang=atand(imag(Ia)/real(Ia)); // Magnitude and angle of Ia
pf=cosd(abs(Ia_ang));
if(Ia_ang>0) then lead_lag='leading';
  elseif (Ia_ang==0) then lead_lag='unity pf' 
    else lead_lag='lagging';
  end
Q=vt*Ia_mag*sind(abs(Ia_ang));
Q=abs(Q)*mvab;
endfunction
////////////////////////////////////////////////////////


// First Case when Ef is increased by 20% at same real load now
 ef1=ef*1.2;
[pf1,lead_lag1,Q1]=excitation_change(P,ef1,vt,xs);
disp("Case (i): When Ef is increased by 20% ");
printf('\n\tPower factor pf= %0.2f %s \n',pf1,lead_lag1);
printf('\tReactive power drawn by the load = %0.1f MVAR \n',Q1);

//Second Case when Ef is decreased by 20% at same real load now
 ef2=ef*0.8;
[pf2,lead_lag2,Q2]=excitation_change(P,ef2,vt,xs);
disp("Case (ii): When Ef is decreased by 20% ");
printf('\n\tPower factor pf= %0.2f %s \n',pf2,lead_lag2);
printf('\tReactive power drawn by the load = %0.1f MVAR \n',Q2);

disp('The answers given here are exact values.Textbook answers has an approximation of upto 2 decimal places on Xs,Ia,pf. ');
