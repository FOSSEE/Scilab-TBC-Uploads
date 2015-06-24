//CHAPTER 8- DIRECT CURRENT MACHINES
//Example 28

disp("CHAPTER 8");
disp("EXAMPLE 28");

//series generator
//VARIABLE INITIALIZATION
E_a=120;                    //in Volts
r_se=0.03;                  //in Ohms
r_a=0.02;                   //in Ohms
v1=240;                     //in Volts
r=0.25;                     //in Ohms
I=300;                      //in Amperes

//SOLUTION
v=I*(r_se+r_a+r);           // voltage drop across Rse and ra and feeder
disp(sprintf("The voltage drop across the three resistances is %d V",v));
//hence the voltage between far end and bus bar is:
v_t=v1+E_a-v;
disp(sprintf("The voltage between far end and the bus bar is %d V",v_t));
disp(sprintf("The net increase of %d V may be beyond the desired limit",v_t-v1));
disp("Hence, a field diverter resistance may be necessary to regulate the far-end terminal voltage");

//END

