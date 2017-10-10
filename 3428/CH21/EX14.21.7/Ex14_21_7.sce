//Section-14,Example-2,Page no.-PC.16
//To calculate temperature at which v_mp of oxygen= v_mp of hydrogen
clc;
//v_mp=sqrt((2*R*T)/M)
M_O2=32                   //mol^-1
M_H2=2                     //mol^-1
T_H2=298                      //K
//v_mp(O2)/v_mp(H2)=(T_O2/M_O2)/(T_H2/M_H2)=1
T_O2=T_H2*(M_O2/M_H2)              //K
disp(T_O2,'Required temperature(K)')
