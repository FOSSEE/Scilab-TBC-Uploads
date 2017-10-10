//Chapter-4,Example 17,Page 97
clc();
close();

q= 300   //heat energy

P= 2   // pressure in atm

V1= 10   // volume in litre

V2= 20   //volume in litre

//since 1 lit.atm = 24.25 cal

W=P*(V2-V1)*24.25     //work done 

delta_E= q-W   //from the 1st law of thermodynamics

printf('the change in internal energy is %.f cal',delta_E)
