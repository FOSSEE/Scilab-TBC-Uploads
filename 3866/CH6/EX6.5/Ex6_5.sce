clc; clear; close;

disp('a) Propagation delay for step case');
disp('Imax=Cl*(dVout/dt)=(Cl*Vdd)/(2*Tphl)');
disp('Tphl=Cl*Vdd/(2*Imax)');

disp('b) Propagation delay for ramp case');
disp('Imax=Cl*(dVout/dt)');
disp('Iout*dt=Cl*dVout');
disp('Integrating both sides,');
disp('(Imax*tr/4)+Imax*(Tphl-tr/2)=Cl*Vdd/2');
disp('Tphl=(tr/4)+Cl*Vdd/(2*Imax)');

disp('c)')
disp('Tphl_ramp = (tr/4)+Tphl_step');
disp('if tr=2*Tplh_step , then');
disp('Tphl_ramp = (2*Tplh_step/4)+Tphl_step');
disp('Tphl_ramp = Tphl_step+(Tphl_step/2)');
