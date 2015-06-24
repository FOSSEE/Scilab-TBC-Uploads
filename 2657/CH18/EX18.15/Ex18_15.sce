//Hit and miss governing
clc,clear
//Given:
d=178,l=330 //Bore and stroke in mm
N=400 //Engine speed at full load in rpm
wmep=6.2 //Working loop mep in bar
pmep=0.35 //Pumping loop mep in bar
mep_dc=0.62 //Mean effective pressure from the dead cycles in bar
N_f=47 //Number of firing strokes at no load in rpm
//Solution:
imep=wmep-pmep //Net indicated mean effective pressure per cycle in bar
N_d=N/2-N_f //Number of dead cycles at no load in rpm
ip1=imep*100*l*%pi/4*d^2*N_f/60*10^-9 //Indicated power at no load in kW
pp_dc=mep_dc*100*l*%pi/4*d^2*N_d/60*10^-9 //Pumping power of dead cycles when no load in kW
fp=ip1-pp_dc //Friction power in kW
ip=imep*100*l*%pi/4*d^2*N/(2*60)*10^-9 //Indicated power at full load in kW
bp=ip-fp //Brake power at full load in kW
eta_m=bp/ip //Mechanical efficiency at full load
//Results:
printf("\n The brake power at full load, b.p. = %.2f kW",bp)
printf("\n The mechanical efficiency at full load, eta_m = %.1f percent\n\n",eta_m*100)
