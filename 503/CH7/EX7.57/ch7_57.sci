//to calculate m/c eff as a generator and max eff when generating and motoring.

clc;
Pop=10*1000;
Vt=250;
Ra=.8;
Rf=275;
Ia=3.91;
Psh=Vt^2/Rf;
Prot=Vt*Ia-Ia^2*Ra;disp(Prot,'rotational loss(W)');

I1=Pop/Vt;
If=Vt/Rf;
Ia=I1+If;
Ploss=Prot+Psh+Ia^2*Ra;
Eff_gen=(1-Ploss/(Ploss+Pop))*100;disp(Eff_gen,'generator eff(%)');

Ia=I1-If;
Ploss=Prot+Psh+Ia^2*Ra;
Eff_motor=(1-Ploss/(Pop))*100;disp(Eff_motor,'motor eff(%)');

Ia=sqrt((Prot+Psh)/Ra);
Ploss_tot=2*(Prot+Psh);disp(Ploss_tot,'total loss(W)');

I1=Ia-If;
Pout=Vt*I1;
Eff_gen_max=((1-Ploss_tot/(Ploss_tot+Pout)))*100;
disp(Eff_gen_max,'max generator eff(%)');

I1=Ia+If;
Pin=Vt*I1;
Eff_motor_max=((1-Ploss_tot/(Pin)))*100;disp(Eff_motor_max,'max motor eff(%)');
