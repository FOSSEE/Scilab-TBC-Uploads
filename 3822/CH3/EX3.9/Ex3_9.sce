

//Optoelectronics and Fiber Optics Communication by C.R. Sarkar and D.C. Sarkar
//Example 3.9
//OS = Windows 7
//Scilab version 5.5.2

clc;
clear;

//given
Gama0=0.5;//transmitted pulse width in ns
delta_timd=0;//total intermodulation dispersion in ns
delta_tmd=2.81;//total material dispersion in ns
delta_twgd=0.495;//total waveguide dispersion in ns
delta_ttotal=((delta_timd^2)+(delta_tmd^2)+(delta_twgd^2))^0.5;//Total dispersion in ns
Gama=Gama0+delta_ttotal;// width of received pulse in ns
Bmax=1/(5*Gama*1e-9);//bitrate in Hz
mprintf("Total dispersion is= %.2f ns",delta_ttotal)
mprintf("\n Width of the received pulse is= %.2f ns",Gama);
mprintf("\n Approximate Bit rate is=%.2f MHz",Bmax/1e6);//division by 1e6 to convert unit into MHz from Hz
