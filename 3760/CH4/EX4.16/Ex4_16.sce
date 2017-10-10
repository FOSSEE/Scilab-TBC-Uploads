clc;
Pout=10000;//output power of dc generator in watts
Vt=250;//terminal voltage in volts
If=2;//field current in ampere at no load
If1=2.2;//field current in ampere at rated load
Tp=1400;//turns on each pole
Ia=Pout/Vt;//armature current
MMF_rl=If1*Tp;//M.M.F. required at rated load
MMF_nl=If*Tp;//M.M.F. required at no load
MMF_s=MMF_rl-MMF_nl;//M.M.F. supplied by series winding
Is=Ia;//series current at full load
Ts=MMF_s/Is;//series field turns
printf('Series field turns are equal to %f.',Ts);
