clear
clc

data=[ 1 2 .025 .1
 2 3 .02 .08
  3 4 .05 .2
   1 4 .04 .16
]

n=4
e=4
Y=zeros(n,n)

for i=1:e
    ynew = 1/(data(i,3)+(%i *real(data(i,4))))
    n1=real(data(i,1))
    n2=real(data(i,2))
    if(n1==0)
        Y(n2,n2)=Y(n2,n2)+ynew
    else
        Y(n1,n1)= Y(n1,n1)+ynew
        Y(n1,n2)= Y(n1,n2)-ynew
        Y(n2,n1)= Y(n2,n1)-ynew
        Y(n2,n2)= Y(n2,n2)+ynew
    end
end

disp(round(Y*1e2)/100,"(a)")

data(e+1,:)=[1 3 .1 .4]
i=e+1
ynew = 1/(data(i,3)+(%i *real(data(i,4))))

n1=real(data(i,1))
n2=real(data(i,2))
if(n1==0)
    Y(n2,n2)=Y(n2,n2)+ynew
else
    Y(n1,n1)= Y(n1,n1)+ynew
    Y(n1,n2)= Y(n1,n2)-ynew
    Y(n2,n1)= Y(n2,n1)-ynew
    Y(n2,n2)= Y(n2,n2)+ynew
end


disp(round(Y*1e2)/100,"(b)")
