clc;
clear all;
Pi=0.47;//given resistivity of intrinsic germanium
sigmai=1/Pi;//conductance
e=1.6*1e-19;//charge of electron
ue=0.38;//electron mobility
up=0.18;//hole mobility
ni=sigmai/(e*(ue+up));//intrinsic carrier density at 300K 
disp('m^-3',ni,'intrinsic carrier density at 300K temp=');
