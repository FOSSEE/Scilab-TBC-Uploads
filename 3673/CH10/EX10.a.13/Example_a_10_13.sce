//Example_a_10_13 page no:473
clc;
D=10;
len_of_flux_path=%pi*D;
len_of_flux_path=len_of_flux_path/100;//converting to meter
area_of_flux_path=15*10^-4;
air_gap=2*10^-3;
B=1.5;
mu_not=4*%pi*10^-7;
mu_r=500;
H=B/(mu_not*mu_r);
mmf=750;
T=250;
N=250;
A=15*10^-4;
exciting_current=mmf/T;
reluctance=len_of_flux_path/(mu_not*mu_r*A);
self_inductance=N^2/reluctance;//calculating the self inductance
Energy=(1/2)*self_inductance*exciting_current^2;//calculating the stored energy
disp("without air gap");
disp(exciting_current,"the exciting current is (in A)");
disp(self_inductance,"the inductance is (in H)");
disp(Energy,"the stored energy is (in joules)");
reluctance_of_gap=air_gap/(mu_not*A);
total_reluctance=reluctance+reluctance_of_gap;
mmf=B*area_of_flux_path*total_reluctance;
Exciting_current=mmf/N;
L=N^2/total_reluctance;
L=L*1000;//converting to milli Henry
E=(1/2)*L*10^-3*Exciting_current^2;
disp("with air gap");
disp(reluctance_of_gap,"the reluctance of air gap is (in A/Wb)");
disp(total_reluctance,"the total reluctance is (in A/Wb)");
disp(mmf,"the mmf is (in AT)");
disp(Exciting_current,"the exciting current is (in A)");
disp(L,"the inductance is (in mH)");
disp(E,"the energy is (in joules)");
//mmf varies slightly with text book because total reluctance is rounded off in text book
//exciting current varies slightly with text book because mmf is rounded off in text book
