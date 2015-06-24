//CHAPTER 5_ Force,Torque and Shaft Power Measurement
//Caption : Load cell
// Example 3// Page 296
Sg=2;
v=0.3;    //poissons ratio
Ei=10   //('enter the excitation voltage=:')
A=5*10^-4  //('enter the area of load cell=:')
E=200;   //(in Gpa) Youngs modulus
// Let sensitivity Eo/P be represented by Se
Se=Sg*(1+v)*Ei/(2*A*E)*.001;
printf('Sensitivity of this load cell is %1.2f micro V/N\n',Se)
Rg=120   //given
Pd=1 //('enter the power dissipated in each gage=:')
Ei_max=sqrt(4*Rg*Pd)
Se_max=Sg*(1+v)*Ei_max/(2*A*E)*.001
printf('The maximum density that can be achieved without endangering the strain gage sensors is %1.2fmicro V/N\n',Se_max)
// Let (Eo/Ei)_max be represented by Em
sig_f=600*10^6  //('enter the fatigue strength=:')
Em=Sg*sig_f*(1+v)/(2*E)*10^-6
printf('The voltage ratio is %1.1f mV/V',Em)

