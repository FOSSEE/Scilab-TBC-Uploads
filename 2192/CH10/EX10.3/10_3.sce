clc,clear
printf('Example 10.3\n\n')

I_1=36 //intensity of lamp1
I_2=16 //intensity of lamp2

//E_1 is illumination due to lamp 1
//E_1 = I_1 / x^2 

//E_2 is illumination due to lamp 2
//E_2 = I_2 / (1-x)^2

//equating E_1 and E_2, and solving for x
p=[5 -18 9]
ans=roots(p)
printf('The screen should be placed at %.0f metres or %.1f metres from first lamp ',ans(1),ans(2))
