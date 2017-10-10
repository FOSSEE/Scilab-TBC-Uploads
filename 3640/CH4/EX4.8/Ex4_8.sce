clc
kVA=6.3 //upper limit for kVA per horsepower
hp=10 //rating of induction motor in hp.(1 hp=746 watts)
V=230 //voltage rating of the motor
I=(kVA*hp*1000)/(sqrt(3)*V)
mprintf("I=%fA\n",I)//ans may vary due to roundoff error



