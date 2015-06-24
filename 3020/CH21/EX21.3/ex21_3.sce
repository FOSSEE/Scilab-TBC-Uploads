
clc;
clear all;
er=4.94;//relative permittivity
n2=2.69;//square of refractive index
//let x=Xi/Xe
a=(er-1)*(n2+2);//temporary variable
b=(er+2)*(n2-1);//temporary variable
x=(a/b)-1;//ratio of the electronic to ionic polarisability
disp('',1/x,'ratio of the electronic to ionic polarisability Xe/Xi is')
