//Section-4,Example-1,Page no.-I.80
//To calculate the shift of the resonance from TMS of a group of nuclei with given parameters.
clc;
dl=3.50            //dl=((v-v_TMS)/v_0)*10^6
v_0=350*10^6
Y=((dl*v_0)/10^6)          //Y=v-v_TMS(let)
disp(Y,'Required shift of resonance(kHz)')

