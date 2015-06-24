clc
disp("the soln of eg 4.9-->Simultaneous O.D.E.")
function dy_dx=fw(x,y,z);                  //let us have dy/dx=z, therefore d2y/dx2=dz/dx
         dy_dx=z,
endfunction
function dz_dx=fq(x,y,z);
         dz_dx=-y*x,
endfunction
y=2,z=1
for x=0:.1:3,
    h=.1                                    //step increment of 0.1
    k1=h*fw(x,y,z)
    l1=h*fq(x,y,z)
    k2=h*fw(x+h/2,y+k1/2,z+l1/2)
    l2=h*fq(x+h/2,y+k1/2,z+l1/2)
    k3=h*fw(x+h/2,y+k2/2,z+l2/2)
    l3=h*fq(x+h/2,y+k2/2,z+l2/2)
    k4=h*fw(x+h,y+k3,z+l3)
    l4=h*fq(x+h,y+k3,z+l3)
    y=y+(k1+2*k2+2*k3+k4)/6
    z=z+(l1+2*l2+2*l3+l4)/6
    end
y=y-(k1+2*k2+2*k3+k4)/6
z=z-(l1+2*l2+2*l3+l4)/6
disp(z,y,"the values of y and z repectively are");