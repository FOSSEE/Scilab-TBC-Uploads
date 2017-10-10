// Exa 5.5
// To Calculate: 
// a) The calls per hour per cell site 
// b) The mean S/I ratio 
// c) The spectral efﬁciency in Erlang/km2/MHz 
// for Reuse ratio =4,7,12 and for omnidirectional, 120 degree and 60 degree antenna systems.

clc;
clear all;

VCH=395;//Total allocated voice channels
CHBW=30; // in kHz
Spectrum=12.5;  // in MHz
CallHT=120; //Average call holding time in sec
Blocking=0.02; // 2%
PL=40;  //slope of path loss in dBperdecade

//solution
disp("We consider only the ﬁrst tier interferers and neglect the effects of cochannel interference from the second and other higher tiers.");
//FOR 120degree sectorization
//N=4
VCH11=(VCH/(4*3));
OffLoad11=24.629;  //  Offered trafﬁc load per sector from Erlang-B table(Appendix A)
Load_site11=3*OffLoad11;
CarLoad11=(1-Blocking)*Load_site11;
Calls_hr_site11=CarLoad11*3600/CallHT;
R11=sqrt(CarLoad11/0.52);
Seff11=CarLoad11/(2.6*Spectrum*R11^2);
S_I11=PL*log10(sqrt(3*4))-10*log10(2);
//N=7
VCH12=(VCH/(3*7));
OffLoad12=12.341;  //  Offered trafﬁc load per sector from Erlang-B table(Appendix A)
Load_site12=3*OffLoad12;
CarLoad12=(1-Blocking)*Load_site12;
Calls_hr_site12=CarLoad12*3600/CallHT;
R12=sqrt(CarLoad12/0.52);
Seff12=CarLoad12/(2.6*Spectrum*R12^2);
S_I12=PL*log10(sqrt(3*7))-10*log10(2);
//N=12
VCH13=VCH/(3*12);
OffLoad13=5.842;  //  Offered trafﬁc load per sector from Erlang-B table(Appendix A)
Load_site13=3*OffLoad13;
CarLoad13=(1-Blocking)*Load_site13;
Calls_hr_site13=CarLoad13*3600/CallHT;
R13=sqrt(CarLoad13/0.52);
Seff13=CarLoad13/(2.6*Spectrum*R13^2);
S_I13=PL*log10(sqrt(3*12))-10*log10(2);
//For omnidirectional 
//N=4
VCH21=VCH/(4);
OffLoad21=87.004;  //  Offered trafﬁc load per sector from Erlang-B table(Appendix A)
Load_site21=OffLoad21;
CarLoad21=(1-Blocking)*Load_site21;
Calls_hr_site21=CarLoad21*3600/CallHT;
R21=sqrt(CarLoad21/0.52);
Seff21=CarLoad21/(2.6*Spectrum*R21^2);
S_I21=PL*log10(sqrt(3*4))-10*log10(6);
//N=7
VCH22=VCH/(7);
OffLoad22=46.817;  //  Offered trafﬁc load per sector from Erlang-B table(Appendix A)
Load_site22=OffLoad22;
CarLoad22=(1-Blocking)*Load_site22;
Calls_hr_site22=CarLoad22*3600/CallHT;
R22=sqrt(CarLoad22/0.52);
Seff22=CarLoad22/(2.6*Spectrum*R22^2);
S_I22=PL*log10(sqrt(3*7))-10*log10(6);
//N=12
VCH23=VCH/(12);
OffLoad23=24.629;  //  Offered trafﬁc load per sector from Erlang-B table(Appendix A)
Load_site23=OffLoad23;
CarLoad23=(1-Blocking)*Load_site23;
Calls_hr_site23=CarLoad23*3600/CallHT;
R23=sqrt(CarLoad23/0.52);
Seff23=CarLoad23/(2.6*Spectrum*R23^2);
S_I23=PL*log10(sqrt(3*12))-10*log10(6);
// For 60degree Sectorization
//N=3
VCH31=VCH/(6*3);
OffLoad31=14.902;  //  Offered trafﬁc load per sector from Erlang-B table(Appendix A)
Load_site31=6*OffLoad31;
CarLoad31=(1-Blocking)*Load_site31;
Calls_hr_site31=CarLoad31*3600/CallHT;
R31=sqrt(CarLoad31/0.52);
Seff31=CarLoad31/(2.6*Spectrum*R31^2);
S_I31=PL*log10(sqrt(3*3))-10*log10(1);
//N=4
VCH32=VCH/(6*4);
OffLoad32=10.656;  //  Offered trafﬁc load per sector from Erlang-B table(Appendix A)
Load_site32=6*OffLoad32;
CarLoad32=(1-Blocking)*Load_site32;
Calls_hr_site32=CarLoad32*3600/CallHT;
R32=sqrt(CarLoad32/0.52);
Seff32=CarLoad32/(2.6*Spectrum*R32^2);
S_I32=PL*log10(sqrt(3*4))-10*log10(1);
//N=7
VCH33=VCH/(6*7);
OffLoad33=5.084;  //  Offered trafﬁc load per sector from Erlang-B table(Appendix A)
Load_site33=6*OffLoad33;
CarLoad33=(1-Blocking)*Load_site33;
Calls_hr_site33=CarLoad33*3600/CallHT;
R33=sqrt(CarLoad33/0.52);
Seff33=CarLoad33/(2.6*Spectrum*R33^2);
S_I33=PL*log10(sqrt(3*7))-10*log10(1);
//N=12
VCH34=VCH/(6*12);
OffLoad34=2.227;  //  Offered trafﬁc load per sector from Erlang-B table(Appendix A)
Load_site34=6*OffLoad34;
CarLoad34=(1-Blocking)*Load_site34;
Calls_hr_site34=CarLoad34*3600/CallHT;
R34=sqrt(CarLoad34/0.52);
Seff34=CarLoad34/(2.6*Spectrum*R34^2);
S_I34=PL*log10(sqrt(3*12))-10*log10(1);

printf('For Omnidirectional    Calls_per_hour_per_cellsite      Mean S_I ratio      SpecrtalEfficiency\n')
printf('For N=4                         %d                           %.1f          %.3f\n',Calls_hr_site21,S_I21,Seff21);
printf('For N=7                         %d                           %.1f          %.3f\n',Calls_hr_site22,S_I22,Seff22);
printf('For N=12                        %d                            %.1f          %.3f\n',Calls_hr_site23,S_I23,Seff23);

printf('For 120deg sector    Calls_per_hour_per_cellsite      Mean S_I ratio      SpecrtalEfficiency\n')
printf('For N=4                         %d                           %.1f          %.3f\n',Calls_hr_site11,S_I11,Seff11);
printf('For N=7                         %d                           %.1f          %.3f\n',Calls_hr_site12,S_I12,Seff12);
printf('For N=12                        %d                            %.1f          %.3f\n',Calls_hr_site13,S_I13,Seff13);

printf('For 60 deg Sector    Calls_per_hour_per_cellsite        Mean S_I ratio      SpecrtalEfficiency\n')
printf('For N=3                         %d                           %.1f          %.3f\n',Calls_hr_site31,S_I31,Seff31);
printf('For N=4                         %d                           %.1f          %.3f\n',Calls_hr_site32,S_I32,Seff32);
printf('For N=7                          %d                           %.1f          %.3f\n',Calls_hr_site33,S_I33,Seff33);
printf('For N=12                         %d                           %.1f          %.3f\n',Calls_hr_site34,S_I34,Seff34);
