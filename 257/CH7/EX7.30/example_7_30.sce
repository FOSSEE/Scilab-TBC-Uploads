q=poly([0 1 1],'s','coeff');
G=k/q //gain FACTOR=k
H=1
T=G/(1+G*H) 

zeta=0.5911;    //given
Tp=0.5;
omegaN=%pi/(Tp*(sqrt(1-zeta^2)))
disp(omegaN,"omegaN = ")
disp(omegaN^2," k = ")