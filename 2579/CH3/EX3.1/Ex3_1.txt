//Ex:3.1
clc;
clear;
close;
// the path difference, x=dcos(a)
// therefore, phase difference , w=(2*%pi/y)*dcos(a)=Bdcos(a)
// from the geometry of the figure in the far field r>>d
// r1=r+x=r+dcos(a)
// r2=r-x=r-dcos(a)
// Hence, Et=I1exp^(-jB(r+dcos(a)))+I2exp^(-jB(r-dcos(a)))
// Et=exp^(-jBr)(I1exp^(-jBdcos(a))+I2exp^(-jBdcos(a)))
// case (a): in case I, we have I1=I2=I
// Hence, Et=Iexp^(-jBr)*(exp^(-jBdcos(a))+exp^(-jBdcos(a)))=2exp^(-jBr)*cos(Bdcos(a))
// Et will be max when cos(Bdcos(a)) will be max. therefore
// cos(Bd*cos(a))=1
// Bd*cos(a)=0
// a_max=n*%pi/2, where n=1,2,3,........
// hence , for the half power point a_HPPD
// cos(Bd*cos(a))=1/(sqrt(2))
// Bd*cos(a)=%pi/4
// cos(a_HPPD)=%pi/4Bd= %pi/(4*2%pi*0.75y/y)=1/6
// a_HPPD=acos(1/6)
a_HPPD=(acos(1/6)*180/%pi);// the half power point in degree
a_m=2*a_HPPD;// the half power beam width in degree
// In case I1=I and I2=Iexp^(j540)=Iexp^(j180)=-I
// therefore, Et2=Iexp^(-jBr)*(exp^(-jBdcos(a))+exp^(-jBdcos(a)))
// =2j*I*exp^(-jBd)*sin(Bdcos(a))
// The max value of sin(Bdcos(a)) is at a=%pi. When
// sin(Bd*cos(a))=sin(Bd*cos(%pi))=sin(-Bd)=sin(-2*%pi*3y/(y*4))=sin(-3%Pi/2)=1
// Hence at the half power point a_HPPD2
// sin(Bd*cos(a))=1/(sqrt(2))
// Bd*cos(a_HPPD2)=%pi/4
// cos(a_HPPD2)=%pi/(4*2%pi*0.75y/y)=1/6
a_HPPD2=(acos(1/6)*180/%pi);// the half power point in degree
a_m2=2*a_HPPD2;// the half power beam width in degree
printf("The half power beam width for broad side array = %f degree", a_m);
printf("\n The half power beam width for end fire array = %f degree", a_m2);