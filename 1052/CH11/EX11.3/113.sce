clc
//Example 11.3
//Page no. 114
printf("Example 11.3-Page no. 114\n\n")
//given
//standard volumetric flowrate of a gas stream(Qs),standard conditions,actual conditions
 Qs=2000//scfm
 Ps=1//atm
 Ts=60//degree F
 Pa=1//atm
 Ta=700//degree F
Ta=Ta+460//rankin
Ts=Ts+460//rankin
 Qa=Qs*(Ta/Ts)*(Ps/Pa)
printf("actual volumetric flowrate Qa=%f acfm",Qa)
