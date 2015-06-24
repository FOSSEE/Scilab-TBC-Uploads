//Determine the frame efficiency & no. of channels per frame of GSM TDMA system

Nr = 2;
Br = 148*8;
Nt = 24;
Bp = 34*8;
Bg = 8.25;
Tf = 120e-3;
Rrf = 270.8333e+3;
R = 22.8;

B0 = ( (Nr*Br) + (Nt*Bp) + (Nt+Nr)*Bg );
Bt = Tf * Rrf;
N = (1 - (B0/Bt))*100 ;
Ncf = ( (N*Rrf)/(R*1e+5) ) ;

disp(B0, 'B0')
disp(Bt, 'Bt')
disp(N, 'Frame Efficiency of TDMA system (in %)')
disp(Ncf, 'No. of channels/frame')