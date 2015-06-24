//Example 2-30, Page no - 90

clear 
clc

bw_mhz = 60
tri_ns= 15

tra_osci = 0.35/(bw_mhz)
tra_comp = 1.1*(tri_ns^2 + (tra_osci*10^3)^2)^0.5

printf('The rise time of the displayed square wave is %.1f ns',tra_comp)
