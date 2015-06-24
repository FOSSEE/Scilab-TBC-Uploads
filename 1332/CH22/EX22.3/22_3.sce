//Example 22.3
//Bisection Method
//Page no. 764
clc;clear;close;

deff('y=f(x)','y=x^3-x^2+x-1')
printf('N01\tN02\tN11\tN12\tN21\tNet31\tO31\tN41\tN42\n------------------------------------------------------------------------\n')
N01=[0,1,0.5,0.75,0.875,0.938,0.969,0.984,0.992,0.996,0.998,0.999,1,1]
N02(1)=2
for i=2:13
    N02(i)=1;
end
for i=1:13
    net31(i)=f(N01(i+1))*f(N01(i))
    if net31(i)>0 then
        O31(i)=1;
    else
        O31(i)=0;
    end
    N41(i)=(1-O31(i))*(N01(i))+O31(i)*N01(i+1)
    N42(i)=(1-O31(i))*N01(i+1)+O31(i)*N02(i)
    if i==2 then
        printf('%.3f\t%.3f\t%.3f\t%.3f\t%.3f\t%.3f\t%.3f\t%.3f\t%.3f\n',0,N02(i),f(N01(i)),N01(i+1),f(N01(i+1)),net31(i),O31(i),N41(i),N42(i))
    else
    printf('%.3f\t%.3f\t%.3f\t%.3f\t%.3f\t%.3f\t%.3f\t%.3f\t%.3f\n',N01(i),N02(i),f(N01(i)),N01(i+1),f(N01(i+1)),net31(i),O31(i),N41(i),N42(i))
end

end
printf('\n\nTherefore the solution is %.3f',N42(13))