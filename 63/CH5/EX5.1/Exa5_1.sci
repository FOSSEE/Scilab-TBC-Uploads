//Determine modulation index in each case

de1 = 4.8;
V = 2.4e+3;
fm1 = 0.5;
fm2 = 0.2;

Vm1 = 7.2;
de2 = 2*Vm1;

Vm2 = 10;
de3 = 2*Vm2;

mf1 = de1/fm1;
mf2 = de2/fm1;
mf3 = de3/fm2;

disp(de2, 'Deviation when AF voltage id incresed to 7.2 V (in kHz)')
disp(de3, 'Deviation when AF voltage id incresed to 10 V (in kHz)')
disp(mf1, 'Modulation index in case 1')
disp(mf2, 'Modulation index in case 2')
disp(mf3, 'Modulation index in case 3')