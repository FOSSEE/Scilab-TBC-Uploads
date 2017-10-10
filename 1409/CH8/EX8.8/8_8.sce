clc;
//page no 8-29
//Example 8.8
R1=100;//in kOhms
R2=200;//in kOhms
R3=510;//in kOhms
R4=1000;//in kOhms
Rc=R1+R2;//DC load for diode
disp(+'kOhms',Rc,'DC load for diode=');
Zm=R1+(1/[(1/R2)+(1/R3)+(1/R4)]);
disp('kOhms',Zm,'Zm=');
Mmax=Zm/Rc;
disp(Mmax,'Mmax=');
