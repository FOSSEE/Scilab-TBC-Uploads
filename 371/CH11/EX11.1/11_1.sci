//Control of DC motors//
//Example 11.1//
//Since the speed control is required in both directions we will have to use a dual converter for the application.It would be prefarable to use six pulse dual converter with thyristors connected in antiparallel connection//
//speed control from 20% rated speed to 100% rated speed will be obtained by armature control//
//Control and speed above 100% will be possible by field weakening//
Idc=200/460*1000;//Rated motor current in amps//
printf('Rated motor current=Idc=%famps',Idc);
//Thus the main armature converter will be having dc side rating of 500Amps and 460volts//
//If 20% drop is allowed in cables,ac transformer,converter etc., then No load dc voltage required=460*1.2=552Volts//
printf('\nHence AC voltage for six pulse configuration=552/1.35=410volts');
//Hence a 3phase,415v AC supply will be adequate for armature control//
//Field converter rating will be 230V,10A.Arrangement will be six pulse,non reversible.since AC supply of 415V,3 phase is available,we shall make use of it for field converter also.//
printf('\nAC rating of field converter=230/1.35=170V');
//However we shall provide a standard AC voltage of 230V AC and will lock the field converter firing angle to suitable value so as to produce 230V dc//
printf('\nDC power=230*10=2300Watts');
printf('\nAC power=1.05*2300=2415Watts');
printf('\nThus tranformer of 2.5KVA,415/230V will be required');
Edca=(170+170/10)*1.35;//available voltage in volts//
Edc=1.35*230;
A=acos(Edca/Edc)*180/%pi;
printf('\nField converter shall be locked at an angle of A=%fdegrees',A);


