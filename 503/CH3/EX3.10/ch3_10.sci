//To find exciting current and expess impedence in pu in both HV and LV sides

clc;

V_BHV=2000;
I_BHV=10;
Z_BHV=V_BHV/I_BHV;

V_BLV=200;
I_BLV=100;
Z_BLV=V_BLV/I_BLV;

I_o=3;
a=V_BHV/V_BLV;

I_oLV=I_o/100;    disp(I_oLV,'I_o(LV)pu=');
I_oHV=I_o/(a*10);    disp(I_oHV,'I_o(HV)pu=');

Z=complex(8.2,10.2);
ZHV=Z/Z_BHV;    disp(ZHV,'Z(HV)pu=');
z=Z/a^2;    
ZLV=z/Z_BLV;    disp(ZLV,'Z(LV)pu=');