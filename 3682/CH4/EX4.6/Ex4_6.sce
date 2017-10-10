// Exa 4.6

clc;
clear;

// Given data

//Referring circuit in Fig. 4.26
// An op amp integrator and a low pass Rc circuit)

// Solution

printf(' Figure (4.26) is a simple op-amp integrator where Millers theorem is applied across the feedback capacitor Cf. \n The input time constant T = R1*Cf*(1-Av). \n Therefore, vi = V*(1-e^(-t/T));');
printf(' \n Therefore, vo = Av*Vi = Av* V*(1-e^(-t/R1*Cf*(1-Av))); '); 
printf(' \n By expanding e^(-t/..) series by Taylors Expansion method we will reach to following approximation');
printf('\n vo ≈ (-V*t/R1*Cf) * [1- t/(2*R1*Cf*(1-Av))];   if Av>>1 ...eq (1)  ');
printf('\n\n');
printf('  Also, we know that for a low pass RC integrating circuit network(without op-amp) the output vo for a step input of V becomes \n');
printf('  For a large Rc, vo ≈ (V*t)/R*C) * (1 - t/(2*R*C) .. eq(2)');  //Eq(2)
printf('\n\n');
printf(' It can be seen that the output voltages of both circuits varies aproximately linearly with time(for large RC) and \n for either case, derivative(vo) = V/RC. \n However, the second term in both the expression represent deviation from the linearity. \n we see that op-amp integrator is more linear than the simple RC circuit by a factor of  1/(1-Av).\n');
