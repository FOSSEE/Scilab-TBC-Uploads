//Ex 7.10
clc;
clear;
close;
format('v',7);

//Given data :
mf=20;//Kg/hr
BP=80;//KW
Etta_m=80/100;
CV=45000;//KJ/Kg
bsfc=mf/BP;//break specified fuel consumption in Kg/KWh
disp(bsfc,"Break specified fuel consumption in Kg/KWh : ");
IP=BP/Etta_m;//KW
mf=mf/60/60;//Kg/s
n=mf/100;//Kg/KWh
Etta_b=BP/mf/CV*100;//%
disp(Etta_b,"Break Efficiency in % : ");
Etta_I=Etta_b/Etta_m;//
disp(Etta_I,"Indicated thermal Efficiency in % : ");
