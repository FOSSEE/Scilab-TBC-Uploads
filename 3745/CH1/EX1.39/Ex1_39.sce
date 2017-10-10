// Ex 39 Page 383

clc;clear;close;
// Given
VL=250;//V
Is=50;//A
Ia=380;//A
If1=5;//A
If2=4.2;//A
ra=0.02;//ohm

//Machine Losses:
ma_cu_loss=Ia**2*ra;//W (motor armature cu loss)
ga_cu_loss=(Ia-Is)**2*ra;//W (generator armature cu loss)
P=VL*Is;//W
stray_loss=P-ma_cu_loss-ga_cu_loss;//W
stray_loss_per_machine=stray_loss/2;//W

//Motor efficiency
field_cu_loss=VL*If2;//W
total_loss=ma_cu_loss+field_cu_loss+stray_loss_per_machine;//W
Pin_motor=(VL*Ia)+(VL*ra);//W
Pout_motor=Pin_motor-total_loss;//W
Eff=Pout_motor/Pin_motor*100;//%
printf("Motor efficiency = %.f percent",Eff)


//Generator efficiency
field_cu_loss=VL*If1;//W
total_loss=ga_cu_loss+field_cu_loss+stray_loss_per_machine;//W
Pout_generator=VL*(Ia-Is);//W
Pin_generator=Pout_generator+total_loss;//W
Eff=Pout_motor/Pin_motor*100;//%
printf("\n Generator efficiency = %.f percent",Eff)




