// to find the load voltage when it draws rated current from transformer

clc;
// here pu method is used
r=20;        //kva rating of three 1-ph transformer
MVA_B=r*3/1000;
v2=2*sqrt(3);        //in kv voltage base on hv side
v1=.2;        //in kv voltage base on lv side

z1=complex(.0004,.0015);        //feeder impedence
Z1=z1*MVA_B/v1^2;        // lv line(pu)
z2=complex(.13,.95);        //load impedence
Z2=z2*MVA_B/v2^2;        // hv line(pu)
z_T=complex(.82,1.02);
ZTY=z_T*MVA_B/v2^2;        // star side(pu)

Ztot=Z1+Z2+ZTY;
V1=1;        //sending end voltage [pu]
I1=1;        //rated current(pu)
pf=.8;
V2=V1-I1*(real(Ztot)*pf+imag(Ztot)*.6);        //load voltage(pu)
V2v=V2*v1;
disp(V2v,'load voltage(kv)');