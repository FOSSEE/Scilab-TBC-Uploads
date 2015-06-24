//Example 2.21
//Graeffe Method
//Page no. 39
clc;clear;close;

a=[1,-2,-5,6]
k=0;
for k=2:6
    for i=1:4
        a(k,i)=(-1)^(i-1)*(a(k-1,i))^2
        j=1;
        while i+j<5 & i+j>2
            a(k,i)=a(k,i)+(-1)^(i-j-1)*2*(a(k-1,i-j))*a(k-1,i+j)
            break
            j=j+1;
        end
    end
end
printf('\t\t\t\ta1\t\t\t\ta2\t\t\t\ta3\n k\ta0\ta1\t\t--\t\ta2\t\t--\t\ta3\t\t--\t\n\t\t\t\ta0\t\t\t\ta1\t\t\t\ta2')
printf('\n----------------------------------------------------------------------------------------------------\n')
for i=1:4
    printf(' %i\t%g\t%.4g\t\t%.5g\t\t%.9g\t\t%.8g\t%g\t\t%.10g\n',i-1,a(i,1),a(i,2),abs(a(i,2)/a(i,1))^(1/(2^(i-1))),a(i,3),abs(a(i,3)/a(i,2))^(1/(2^(i-1))),a(i,4),abs(a(i,4)/a(i,3))^(1/(2^(i-1))))
end
for i=5:6
    printf(' %i\t%g\t%.4g\t%.5g\t\t%.9g\t%.8g\t%.7g\t%.10g\n',i-1,a(i,1),a(i,2),abs(a(i,2)/a(i,1))^(1/(2^(i-1))),a(i,3),abs(a(i,3)/a(i,2))^(1/(2^(i-1))),a(i,4),abs(a(i,4)/a(i,3))^(1/(2^(i-1))))
end
printf('\n\nThe Absolute Values of the roots are %g, %.8g and %g',abs(a(i,2)/a(i,1))^(1/(2^(i-1))),abs(a(i,3)/a(i,2))^(1/(2^(i-1))),abs(a(i,4)/a(i,3))^(1/(2^(i-1))))