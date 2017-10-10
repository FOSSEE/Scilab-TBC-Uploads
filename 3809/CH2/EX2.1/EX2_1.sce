//Chapter 2, Example 2.1
clc
//Initialisation
t=0.02                      //time period in sec, from graph
v1=7                        //position peak voltage, from graph
v2=7                        //negative peak voltage, from graph

//Calculation
f=1/t                       //frequency in hertz
vpp=v1+v2                   //peak to peak voltage

//Result
printf("Period T = %.2f sec\n",t)
printf("Frequency F = %d Hz\n",f)
printf("Peak Voltage, Vp = %d V\n",v1)
printf("Peak to Peak Voltage, Vpp = %d V\n",vpp)
