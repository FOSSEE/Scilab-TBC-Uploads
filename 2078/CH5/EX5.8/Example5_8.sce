//Exa 5.8
clc;
clear;
close;
//Given data :
l=80;//km
P=15;//MW
VR=66*10^3;//Volt
R=l*0.3125;//ohm
X=l*1;//ohm
Y=l*17.5*10^-6;//S
pf=0.8;//power factor
cos_fi_r=pf;
sin_fi_r=sqrt(1-cos_fi_r^2);
IR=P*10^6/(VR*pf);//A
IR=IR*(cos_fi_r-%i*sin_fi_r);//A
IC=%i*Y*VR;//A
IS=IR+IC;//A
disp("Sending end current(A), magnitude is "+string(abs(IS))+" and angle in degree is "+string(atand(imag(IS),real(IS))));
VS=VR+IS*(R+%i*X);//volt
disp("Sending end voltage(V), magnitude is "+string(abs(VS))+" and angle in degree is "+string(atand(imag(VS),real(VS))));
fi_s=atand(imag(VS),real(VS))-atand(imag(IS),real(IS));//
cos_fis=cosd(fi_s);//sending end pf
disp(cos_fis,"Sending end power factor(lag) : ");
Reg=(abs(VS)-VR)/VR*100;//%
disp(Reg,"Regulation(%) :  ");
LineLoss=abs(IS)^2*R/1000;//kW
disp(LineLoss,"Line Losses in kW : ");
Eta_T=P*1000/(P*1000+LineLoss)*100;//%
disp(Eta_T,"Transmission Efficiency(%) : ");
