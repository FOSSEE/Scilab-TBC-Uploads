// Chapter 9_The bipolar transistor
//Caption_Breakdown voltage
//Ex_9//page 390
bet=100   //common emitter current gain
NB=10^17    //base doping concentration
vmin=15    //minimum open base breakdown voltage
BVcbo=(bet)^(1/3)*vmin
printf('To achieve this breakdown voltage, the maximum collector doping concentration should be 7*10^15 cm^-3 from the figure')