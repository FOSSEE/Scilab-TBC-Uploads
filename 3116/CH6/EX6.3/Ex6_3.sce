


clc
// Given that
D_500=4.8*10^-14 //Diffusion coefficient at 500 C
D_600=5.3*10^-13 //Diffusion coefficient at 600 C
t_600=10 //Time in hours to diffuse
printf("Example 6.3\n")
t_500=D_600*t_600/D_500
printf("\n Time to diffuse at 500 degree Celsius is %.1f h\n",t_500)
