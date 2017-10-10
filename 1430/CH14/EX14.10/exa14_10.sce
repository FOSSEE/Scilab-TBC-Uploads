// Example 14.10
// A Mid- frequency Transistor Amplifier
H=[1000,10^-3;50,0.1*10^-3]; // Given H-parameter matrix
delta_h=det(H);
A_i=-25
// Working with impedances and admittances given in figure 14.22 we get,
R_L=poly(0,'R_L');
Z_i_s=(0.05*R_L+1)/(0.1*R_L+1);
H_i_s=50/(0.1*R_L+1);
R_s=2000;
r=-(R_s*H_i_s)/(R_s+Z_i_s);
p=r+25;
// solving for p we get the value for R_L
R_L=4000;
disp(R_L,"Required Value of Laod resistance(Ohms)=")
