//complementary slot impedence
//given
clc
function[Zs]=slot_imp(Zd)
no=377
Rd=real(Zd)
Xd=imag(Zd)
Zs=(no^2/(4*(Rd^2+Xd^2)))*(Rd-%i*Xd)//slot impedance
Zs=round(Zs*100)/100///rounding off decimals
endfunction
Zd=73+%i*50//ohm
[Zs1]=slot_imp(Zd)
Zd=70//ohm
[Zs2]=slot_imp(Zd)
Zd=800//ohm
[Zs3]=slot_imp(Zd)
Zd=400//ohm
[Zs4]=slot_imp(Zd)
Zd=50+%i*10//ohm
[Zs5]=slot_imp(Zd)
Zd=50-%i*30//ohm
[Zs6]=slot_imp(Zd)
Zd=350//ohm
[Zs7]=slot_imp(Zd)
disp(Zs7,Zs6,Zs5,Zs4,Zs3,Zs2,Zs1,'the complementry slot impedence in ohms')//ohm
