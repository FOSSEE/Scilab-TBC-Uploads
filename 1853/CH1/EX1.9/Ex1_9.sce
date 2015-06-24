
//find how current divide in circuit
R1=0.02
R2=0.03
I1=(10*R2)/(R1+R2)
I2=(10*R1)/(R1+R2)
disp('I2='+string(I2)+  'amps'  ,  'I1= '+string(I1)+ 'amps')
