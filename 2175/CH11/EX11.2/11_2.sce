clc;
k=0.9;
Cri1=486;//m/s
Cri2=187.5;//m/s
Caei=327;//m/s
Cre1=k*Cri1;
Cre2=k*Cri2;
Cai2=k*Caei;
//from velocity diagram;
disp("inlet blade angle firls row of moving blades");
Bi1=20;
disp("degree",Bi1)

disp("inlet blade angle fixed blades");
alpha=20;
disp("degree",alpha)

disp("inlet blade angle second row of moving blades");
Bi2=34.5;
disp("degree",Bi2);

//part II
m=1;
Cw1=874;
Cw2=292.5;
disp("N",m*Cw1,"driving force on first row:");
disp("N",m*Cw2,"driving force on second row:");

Cfi1=167;
Cfe1=135;
Cfi2=106;
Cfe2=97;
At1=m*(Cfi1-Cfe1);
At2=m*(Cfi2-Cfe2);
disp("N per kg/s",(At1+At2),"Total axial thrust:");

//part III
T_df=Cw1+Cw2
disp("N per kg/s",T_df,"total driving force");
bv=120
P=T_df*bv/10^3;
Cai1=600;
E=m*Cai1^2/(2*10^3);
De=P/E;
disp("%",De*100,"diagramefficiency is");

//partIV
alpha_i=16*%pi/180;
M=cos(alpha_i)^2;
disp("%",M*100,"Maximum diagram efficienty is:");
