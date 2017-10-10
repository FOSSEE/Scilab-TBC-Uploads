clc;
ATp=15000;//armture ampere turns per pole
Pr=0.68;//ratio of pole arc to pole pitch
Ia=850;//rated armature current
Bcp=0.25;//interpolar flux density in tesla
gcp=0.01;//interpolar air gap length
U=4*%pi*0.0000001;//permeability of air
ATc=Pr*ATp;//compensating winding ampere turns per pole
C=2*(ATc/Ia);//compensating winding conductors per pole
MMF_ag=(Bcp/U)*gcp;//M.M.F. required for the air gap under the interpole
MMF=MMF_ag+ATp;//interpole M.M.F. without compensating winding
MMF_c=MMF-ATc;//ampere turns furnished by each interpole
N=MMF_c/Ia;//No. of turns on each interpole
printf('Number of turns on each interpole is %f.',round(N));
