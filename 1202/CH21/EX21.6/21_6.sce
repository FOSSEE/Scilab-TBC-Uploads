clear
clc

//Example 21.6
disp('Example 21.6')

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
    
    
n=1;
N=size(x,1);
T=mean(x,'r');
//For our example n=1 because each measurement is a subgroup
S=mvvacov(x);
//Note that mvvacov calculates covariance with denominator N, while
//variance caluclates with denominator N-1, hence diagonal entry of mvvacov does not
//match with variance calculated manually for each vector
//As per wikipedia the book is wrong and for covariance matrix we should
//use N-1 but here we follow the book
Tsquare=zeros(N,1);
for k=1:N
    Tsquare(k)=n*(x(k,:)-T)*inv(S)*(x(k,:)-T)';
end

UCL=11.63;

plot(repmat(UCL,1,N),color='black');
plot(Tsquare,'+')
legend("UCL 99% confidence limit")
xtitle("Example 21.6","Sample number","$T^2$")
