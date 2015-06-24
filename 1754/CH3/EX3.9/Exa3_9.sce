//Exa 3.9
clc;
clear;
close;
//Given data : 
Rout=10;//in kohm
Rin=2.5;//in kohm
f=200;//in Hz
//Formula : Rout=omega*Lp=2*%pi*f*Lp
Lp=Rout*10^3/(2*%pi*f);//in H
disp(round(Lp),"Inductance of primary in Henry : ");
//Formula : Rin=omega*Ls=2*%pi*f*Ls
Ls=Rin*10^3/(2*%pi*f);//in H
disp(round(Ls),"Inductance of seondary in Henry : ");