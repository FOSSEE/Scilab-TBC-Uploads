//pagenumber 109 example 12
clear
i1=0.1;//current in ampere
vms=40;//rms voltage in volts
c=40*10^-6;//capacitance in farad
r1=50;//resistance in ohms
ripple=0.0001;
induct=((1.76/c)*sqrt(0.472/ripple));//inductance
outv=(2*sqrt(2)*vms)/3.14-i1*r1;//output voltage
disp("inductance   =   "+string(induct)+"henry");//correction in the book
disp("output voltage   =   "+string(outv)+"volt");
