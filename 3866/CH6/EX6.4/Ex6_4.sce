clc; clear; close;

Cg=2;//in fF/micrometer
Wp=0.8;//in micrometer
Wn=0.4;//in micrometer
Ceff=1;//in fF/micrometer
Cfanout=4*Cg*(Wp+Wn);
Cself=Ceff*(Wn+Wp);
Ctotal=Cfanout+Cself;
disp(Cfanout,'Fanout capacitance(in fermifarad)=');
disp(Cself,'Self capacitance(in fermifarad)=');
disp(Ctotal,'Total capacitance(in fermifarad)=');
