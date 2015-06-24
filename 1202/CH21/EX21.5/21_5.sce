clear
clc

//Example 21.5
disp('Example 21.5')

//data
x=[ 17.7    1380.  
    23.6    1458.  
    13.2    1322.  
    25.2    1448.  
    13.1    1334.  
    27.8    1485.  
    29.8    1503.  
    9.      1540.  
    14.3    1341.  
    26.     1448.  
    23.2    1426.  
    22.8    1417.  
    20.4    1384.  
    17.5    1380.  
    18.4    1396.  
    16.8    1345.  
    13.8    1349.  
    19.4    1398.  
    24.7    1426.  
    16.8    1361.  
    14.9    1347.  
    27.6    1476.  
    26.1    1454.  
    20.     1393.  
    22.9    1427.  
    22.4    1431.  
    19.6    1405.  
    31.5    1521.  
    19.9    1409.  
    20.3    1392.];  


T=mean(x,'r');
s=sqrt(variance(x,'r'));

UCL=T+3*s;
LCL=T-3*s;

p=size(x,1)

subplot(2,1,1);
plot2d(repmat(UCL(1),1,p));
plot2d(repmat(LCL(1),1,p));
plot2d(repmat(T(1),1,p));
plot2d(x(:,1),style=-1,rect=[0,0,32,40])
xtitle('Example 21.4','Sampling number','BOD (mg/L)')


subplot(2,1,2);
plot2d(repmat(UCL(2),1,p));
plot2d(repmat(LCL(2),1,p));
plot2d(repmat(T(2),1,p));
plot2d(x(:,2),style=-1,rect=[0,1200,32,1600])
xtitle('','Sampling number','Solids (mg/L)')

//subplot(3,1,3);
scf()
plot2d(x(8,1),x(8,2),style=-3,rect=[0,1200,40,1600])
plot2d(x(:,1),x(:,2),style=-1,rect=[0,1200,40,1600])
legend("Sample #8",position=4)
xtitle('','BOD (mg/L)','Solids (mg/L)')

mprintf('\nThe confidence interval for third case is not drawn\n...
    because it is beyond the scope of this book')

