//to calculate mmf per pole and speed at no load(rpm)

clc;
ATppole=[1200 2400 3600 4800 6000];
V_i=[76 135 180 215 240];
plot(ATppole,V_i);
xlabel('AT/pole');
ylabel('E_a(V)');        

V=240;
vd=25;        //voltage drop ie I_a*(R_a+R_se)
E_a=V-vd;
AT_netfl=4800;
AT_sefl=2400;
AT_sh=AT_sefl;

AT_senl=(3/25)*AT_sefl;        
AT_sh=2400;        //no change        
AT_netnl=AT_senl+AT_sh;
disp(AT_netnl,'mmf/pole on no load(AT)');
n=850;
E_a=148;        //from the magnetising curve
E_anl=240-3;
nnl=n*E_anl/E_a;
disp(nnl,'speed at no load(rpm)');