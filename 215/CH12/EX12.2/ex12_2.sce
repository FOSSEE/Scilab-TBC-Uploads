clc
//Example 12.2
//Calculate total power dissipated
disp('Given')
disp('Van=200 with angle 0 degree and Zp=100with angle 60 degree')
Zpamp=100;Zpang=60
//Since one of the phase voltage is given, we need to find other phase voltages
Vanamp=200;Vbnamp=200 ; Vcnamp=200;
Vanang=0;Vbnang=-120;Vcnang=-240;
disp('The phase voltages are')
printf("Van=%d /_%d deg V\tVbn=%d /_%d deg V\tVcn=%d /_%d deg V\t",Vanamp,Vanang,Vbnamp,Vbnang,Vcnamp,Vcnang)

//Now we will find line voltages
//Let line voltage be Vline
Vline=200*sqrt(3)
//By constructing a phasor diagram
disp('The line voltages are')
printf("\n Vab=%d /_%d deg V\tVbc=%d /_%d deg V\tVca=%d /_%d deg V\t",Vline,30,Vline,-90,Vline,-210)

//Let the line current be IaA
IaAamp=Vanamp/Zpamp
IaAang=Vanang-Zpang
//Since the given system is a balanced three phase system
//From phasor diagram as shown in figure 12.16
disp('The line currents are')
printf("\n IaA=%d /_%d deg V\tIbB=%d /_%d deg V\tIcC=%d /_%d deg V\t",IaAamp,IaAang,IaAamp,IaAang-120,IaAamp,IaAang-240)
//Let power absorbeed by phase A is PAN
PAN=Vanamp*IaAamp*cos(((Vanang+IaAang)*%pi)/180)
printf("\n Total average power = %d W",3*PAN)
