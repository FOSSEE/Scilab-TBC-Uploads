//chapter5
//example5.3
//page85

// for Rl=50, Av=30
//for Rl=85, Av=34

// Av=mu*Rl/(rp+Rl)
// thus
// Av*rp-mu*Rl=-Av*rl
// substituting for Rl=50 and Rl=85 we get the following linaer equations

// 30*rp-50*mu=-1500 and 
// 34*rp-85*mu=-2890
// solving by matrix

a=[30 34 ; -50 -85]
b=[-1500 -2890]
solution=b/a
mu=solution(1,2)
rp=solution(1,1) // in kilo ohms since RL was in kilo ohm in the equations

gm_kilo_mho=mu/rp
gm=gm_kilo_mho/1000
printf("mu = %.3f \n",mu)
printf("rp = %.3f kilo ohm \n",rp)
printf("gm = %.4f mho \n",gm)
