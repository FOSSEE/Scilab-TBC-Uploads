clc
clear
disp('example 14.16')
vp=132;vs=33;vt=11  //voltage at primary ,secondary ,teritiory
pp=75;ps=50;pt=25  //MVA rating at prinary ,secondary,teritiory 
rpr=0.12;rv=132;rp=75  //reactance power of primary under rv and rp as voltage and power base
poa=60;rea=50  //load real and reactive power a
pva=125;svaa=33 //primary and secondary voltage a
svsb=25;pvb=140;svbb=33  //primary and secondary voltage at no load
disp('(a)')
vbas=132 ;mvabas=75  //assume voltage and MVA base   
v1pu=pva/vbas   //voltage in per unit
v1apu=round(v1pu*1000)/1000  //rounding off 
qre=rea/mvabas  //reactive power in per unit
vn1a=(v1apu+sqrt(v1apu^2-4*rpr*qre))/2  //voltage using quadratic equation formulae
vn2a=(v1apu-sqrt(v1apu^2-4*rpr*qre))/2
vnaa=vn1a*vbas
v12=pvb/vbas
q=svsb/mvabas
vn1b=(v12+sqrt(v12^2-4*rpr*q))/2  //voltage using quadratic equation formulae
vn1b=round(vn1b*1000)/1000
vnbb=vn1b*vbas    //vn in no load condition
printf("vn=%.3f.p.u \n vn=%.3fkV",vn1a,vnaa)
disp('(b)')
printf("vn=%.3f.p.u \n vn=%.3fkV",vn1b,vnbb)
z=vnaa/svaa;x=vnbb/svbb;
printf("\n transformation ratio under load condition %.3f \n transformation ratio under no load condition %.3f \n the actual ratio can be taken as mean of the above value i.e.%.3fpercent\n varying by (+/-)%.3fpercent",z,x,(z+x)/2,x-(z+x)/2)

