//length and characteristic impedance of transformer
//given
Zo=50//ohm
Zl=200//ohm
f=300d+6//MHz
Vo=3d+8//velocity of wave
lem=Vo/f
leng_trans=lem/4//meter//the length of transformer is 1/4 of wavelength
Zt=sqrt(Zo*Zl)//ohm
disp(Zt,leng_trans,'the length and characteristic impedance in meter and ohm respectively')
