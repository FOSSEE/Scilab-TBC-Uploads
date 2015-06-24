clc
clear
//DATA GIVEN
c=88;                   //% of carbon in coal
h=4.2;                  //% of hydrogen in coal
Wf=0.848;               //weight of coal in g
Wfw=0.027;              //weight of fuse wire in calorimeter in g
W=1950;                 //weight of water in calorimeter in g
We=380;                 //water equivalent of calorimeter
Dt=3.06;                //observed temperature rise (t2-t1) in deg celsius
tc=0.017;               //cooling correction in deg celsius
cfw=6700;               //calorific value of fuse wire in J/g

//CALCULATIONS
ctr=(Dt)+tc;            //corrected temp. rise
Hw=(W+We)*4.18*[ctr];   //heat recieved by water in J
Hfw=Wfw*cfw;            //heat given out by fuse wire in J
Hcf=Hw-Hfw;             //heat produced due to combustion of fuel in J
HCV=Hcf/Wf;             //higher calorific value of fuel in kJ/kg
Ms=9*h/100;             //steam produced per kg of coal
LCV=HCV-2465*Ms;        //lower calorific value of fuel in kJ/kg

printf('The Higher calorific value of fuel, H.C.V. is: %5.1f kJ/kg. \n',HCV);
printf(' The Lower calorific value of fuel, L.C.V. is: %5.1f kJ/kg. \n',LCV);
