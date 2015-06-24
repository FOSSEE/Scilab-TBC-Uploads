//chapter 10
//example 10.10
//page 357
Vref=-1.25;
Iadj=50*10^-6;
R1=240;
R2min=0;//to find minimum output voltage correspond to R2min=0
Voutmin=Vref*(1+(R2min/R1))+Iadj*R2min;
disp(Voutmin)
R2max=5*10^3;//for maximum output voltage 
Voutmax=Vref*(1+(R2max/R1))+Iadj*R2max;
disp(Voutmax)//volts