// Example 2.59:h parameters and hybrid parameters
clc;
clear;
//H Paramters are
hie=1100;//in killo ohms
hre=2*10^-4;
hfe=50;
hoe=2.5*10^-5;// in ampere per volt
hic=hie;//
hrc=1-hre;//
hfc=-(1+hfe);//
hoc=hoe;//
hib=(hie/(1+hfe));//
hrb= ((hie*hoe)/(1+hfe))-hre;//
hob=(hoe/(1+hfe));//
rbb=100;
rbe=(hie-rbb)*10^-3;//in killo ohms
rbc= ((hie-rbb)/hre)*10^-6;//
gm= ((hfe/(hie-rbb)));//
x=hoe-((hfe*hre)/(hie-rbb));//
rce=1/(1.25*10^-2);//
disp(hic,"hic=",hrc,"hrc=",hfc,"hfc=",hoc,"hoc=","H-parameters for common collector configuration are")
disp(hib,"hib=",hrb,"hrb=",hob,"hob=","H-parameters for common collector configuration are")
disp(rbe,"rbe(in killo ohms)=",rbc,"rbc(mega ohms)=",gm,"transconductance(mho)=",rce,"rce(in killo ohms)=","hybrid pie paramtere are")
