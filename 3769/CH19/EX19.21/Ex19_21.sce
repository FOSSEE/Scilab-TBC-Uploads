clear
//Given
u0=-200.0                        //cm
fa=50.0                          //cm
ve=-25.0                           //cm
fe=5.0                            //cm

//Calculation
v0=1/((1/fa)+1/u0)
M0=v0/u0
ue=1/((1/ve)-1/fe)
Me=ve/ue
D=v0-ue
M=M0*Me

//Result
printf("\n (i) Saparation between the objective and eyepiece is %0.2f  cm",D)
