//Ex 7.11
clc;
clear;
close;
format('v',7);

//Given data :
d=270/1000;//meter
L=380/1000;//meter
Pmi=6;//bar
N=350;//rpm
WsubS=1000;//N
Db=1.5;//meter
mf=10;//Kg/hr
CV=44400;//KJ/Kg

IP=Pmi*10^5*(%pi/4*d^2)*L*N/2/60/1000;//KW
disp(IP,"Indicated Power in KW : ");
BP=(WsubS)*%pi*Db*N/60/1000;//KW
disp(BP,"Brake Power in KW : ");
Etta_m=BP/IP*100;//%
disp(Etta_m,"Mechanical Efficiency in % : ");
mf=mf/60/60;//Kg/s
Etta_b=BP/mf/CV*100;//
disp(Etta_b,"Indicated thermal Efficiency in % : ");
