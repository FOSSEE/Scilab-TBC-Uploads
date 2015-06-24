// Example 11.2, page no-332
clear
clc
lf=53.75*10^-3
l0=50*10^-3
df=9.4*10^-3
d0=8.8*10^-3
pl=(lf-l0)*100/l0
pa=((%pi*df^2)-(%pi*d0^2))*100/(%pi*df^2)
printf("\nThe %% elongation is %.1f%% and \nthe %% reduction in area is %.3f%%",pl,pa)
