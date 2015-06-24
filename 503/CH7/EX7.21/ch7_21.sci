//to determine demagnetising AT/pole and no of series turns reqd

clc;
V_oc=[220 230 240 250 260 270];
I_f=[1 1.15 1.35 1.5 1.69 2.02];
plot(I_f,V_oc);
xlabel('I_f(A)');
ylabel('V_oc(V)');

V=240;
I_a=83.3;
R_a=.12;
E_a=V+I_a*R_a;
n=1150;
nn=1190;
Ea=E_a*(nn/n);
I_f=2.1;
I_fnet=1.65;
I_fd=I_f-I_fnet;
N_sf=550;        //shunt field turns/pole
AT_d=N_sf*I_fd;
disp(AT_d,'demagnetising AT_d/pole');

//at no load(1190rpm)
V_t=230;
I_f=1.43;
AT_f=N_sf*I_f;
R_f=V_t/I_f;

//at load(1150rpm)
I_L=I_a-(V/R_f);
V_a=(V+I_a*.045)/(1+(.045/R_f));
E_a=V_a+I_a*.12;
//consult mag field
Ea=E_a*(nn/n);
Ifn=1.675;    //needed
ATn=N_sf*Ifn;
If=V_a/R_f;
ATf=N_sf*If;

ATse=ATn+AT_d-AT_f;
I_L=I_a-If;
Nse=floor(ATse/I_L);
disp(Nse,'no of series turns/pole');