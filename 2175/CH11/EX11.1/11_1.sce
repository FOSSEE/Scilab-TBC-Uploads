clc;
Cai=900;
Cb=300;
alpha=20*%pi/180;
Cri=(Cai^2+Cb^2-2*Cb*Cai*cos(alpha))^0.5;
b=asin(Cai*sin(alpha)/Cri);
Beta=180*b/%pi
disp("the blade inlet angle is:");
disp("degree",Beta)

//part II
k=0.7;
Cre=k*Cri
AD=Cri*cos(b);
AE=Cre*cos(b);

Cw=AD+AE;
disp("driving force on wheel is:");
m=1;
Df=m*Cw
disp("N per kg/s",Df);


//part III
Cfi=Cri*sin(b);
Cfe=Cre*sin(b);
Cf=Cfi-Cfe;
At=m*Cf;
disp("axial thrust is:");
disp("N per kg/s",At)

//part IV
Dp=Cb*Cw;
disp("diagram power per unit mass flow rate:");
disp("kW",Dp/1000);

//part V
De=Cb*Cw/(Cai^2);
disp("Diagram efficiency is");
disp("%",De*100);
