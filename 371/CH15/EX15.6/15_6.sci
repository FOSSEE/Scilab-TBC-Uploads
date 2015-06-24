//The ac Motor Control//
//Example 15.6//
f1a=50;//intial frequency in hertz//
f1b=30;//value of frequency reduced to in hertz//
Va=415;//operating voltage of induction motor in volts//
Vb=Va*f1b/f1a;//input voltage to the motor in volts//
printf('value of input voltage to the motor=Vb=%fvolts',Vb);
Pa=100;//operating power of induction motor in KVA//
Pb=Pa*f1b/f1a;//input power to the motor in KVA//
printf('\nvalue of input power to the motor=Pb=%fKVA',Pb);
