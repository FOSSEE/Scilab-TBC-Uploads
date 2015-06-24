//clear//
clc
clear
exec("8.4data.sci");
HRx0 = H0C-H0B-H0A;
deltaCp = CpC-CpB-CpA;
deltaHRx0 = HRx0+deltaCp*(TR-TR);
v0 = vA0+vB0+VM0;
tau = V/v0;
CA0 = FA0/v0;
phiM0 = FM0/FA0;
phiB0 = FB0/FA0;
Cpi = CpA+phiB0*CpB+phiM0*CpM;

for i =1:length(T)
XEB(i) = -Cpi*(T(i)-Ti0)/(deltaHRx0+deltaCp*(T(i)-TR));
XMB(i) = tau*A*exp(-E/(R*T(i)))/(1+tau*A*exp(-E/(R*T(i))));
end



plot2d(T',[XEB XMB]); 

xtitle( 'Figure E8-4.2', 'T(oR)', 'Conversion, X' ) ;
legend(['XEB';'XMB']);
