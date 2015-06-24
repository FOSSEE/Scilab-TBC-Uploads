clc,clear
printf('Example 10.1\n\n')

current = 3
voltage=250
lumens=  9420 //total lumens emitted by lamp
MSCP =  lumens /(4*%pi)  //mean spherical candle power
printf('(i)Mean spherical candle power = %.2f',MSCP)
power= current*voltage //power of lamp
efficiency = lumens / power  //efficiency of lamp
printf('\n(ii)Efficiency of lamp = %.2f lumens/watt',efficiency)
