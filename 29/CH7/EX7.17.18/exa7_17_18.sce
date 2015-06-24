//caption:gain_phase_plot
//example 7.17.18
//page 256
k=1; 
s=%s; 
G=syslin('c',k/(s*(0.5*s+1)*(0.25*s+1))); 
// freq range to plot 
fmin=0.1; 
fmax=7; 
black(G, fmin, fmax) 
xgrid 
xtitle('Gain phase plot')
disp("for GM=8 db, K=2.23") 
disp("for PM=20 deg. , K=2.69")