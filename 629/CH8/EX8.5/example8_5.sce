clear
clc
//Example 8.5 REYNOLDS-NUMBER SIMILITUDE OF A VALVE
//p-prototype, m-model
Lmp=1/6; //Lmp=(Lm/Lp)
//Vm*Lm/vm=Vp*Lp/vp, vm=vp
Vmp=1/Lmp //Vmp=(Vm/Vp)
Qp=700; //[cfs]
Amp=(Lmp)^2 //Ratio of areas, Amp=(Am/Ap)
//Discharge
Qm=Qp*Vmp*Amp  //[cfs]
printf("\n The flow rate required for the model, Q = %.f cfs.\n",Qm)
