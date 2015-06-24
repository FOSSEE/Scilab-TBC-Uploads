clc;
warning("off");
printf("\n\n example10.12 - pg454");
// given
kexit=1;
kentrance=0.5;
Q=400;  //[gpm] - volumetric flow rate
gc=32.174;
// for 4 inch pipe
d=4.026;  //[inch]
L=22;  //[ft]
Lbyd=(L*12)/(d);
// adding the contributions due to fittings 
Lbyd=Lbyd+3*13+340+4*30;
N=Lbyd/45;
N=N+kentrance+0;
U4=Q/39.6;  //[ft/sec]
Fpipe_4=(N*(U4^2))/(2*gc);
printf("\n\n F(4 in.pipes) = %f ft*lbf/lbm",Fpipe_4);
// for 5 inch pipe
L=100;  //[ft]
d=5.047;  //[inch]
Lbyd=(L*12)/(d);
// valves contributes 26 diameters and six elbows contribute 30 diameters ecah;therefore
Lbyd=Lbyd+26+6*30;
N=Lbyd/45;  // no. of velocity heads
N=N+kexit+kentrance;
U5=Q/62.3;
Fpipe_5=(N*(U5^2))/(2*gc);
printf("\n\n F(5 in.pipes) = %f ft*lbf/lbm",Fpipe_5);
// for 6 inch pipe
d=6.065;  //[inch]
L=5;  //[ft]
Lbyd=(L*12)/(d);
// adding the contributions due to fittings 
Lbyd=Lbyd+1*13+2*30;
N=Lbyd/45;
N=N+0+kentrance;
U6=Q/90;
Fpipe_6=(N*(U6^2))/(2*gc);
printf("\n\n F(6 in.pipes) = %f ft*lbf/lbm",Fpipe_6);
F_largepipes=Fpipe_4+Fpipe_5+Fpipe_6;
printf("\n\n F(large pipes) = %f ft*lbf/lbm",F_largepipes);



