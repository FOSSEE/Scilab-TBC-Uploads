// Predictive PID, tuned with GPC, as explained in Sec. 12.2.3.
// 12.11

function [Kp,Ki,Kd] = ...
gpc_pid(A,dA,B,dB,C,dC,N1,N2,Nu,lambda,gamm,gamma_y)
Adelta=convol(A,[1 -1]); G=[];
for i=N1:N2
    zi=zpowk(i);
    [E,dE,F,dF]=xdync(Adelta,dA+1,zi,i,C,dC);
    [Gtilda,dGtilda,Gbar,dGbar] = ...
      xdync(C,dC,zi,i,E*B,dE+dB);
    for j = 1:i, Gtilda1(j)=Gtilda(i+1-j); end
    Gtilda2 = Gtilda1.'; // Added because Scilab forms a column vecor 
    // while Matlab forms a row vector, by default
        if i<=Nu-1
       G=[G;[Gtilda2,zeros(1,Nu-i)]];
    else
       G=[G;Gtilda2(1:Nu)];
    end
end
es=sum(C)/sum(A); gs=sum(B)/sum(A); F_s=es*A; G_s=[];
for i=1:Nu
    if ((Nu - i) == 0)
    row=gs*ones(1,i);
    else
    row=gs*ones(1,i); row=[row,zeros(Nu-i,Nu-i)];
    end;
    G_s=[G_s;row];
end
lambda_mat=lambda*(diag(ones(1,Nu)));
gamma_mat=gamm*(diag(ones(1,Nu)));
gamma_y_mat=gamma_y*(diag(ones(1,N2-N1+1))); 
mat1=inv(G'*gamma_y_mat*G+lambda_mat+G_s'*gamma_mat*G_s);
mat2=mat1*(G'*gamma_y_mat);
mat2_s=mat1*(G_s'*gamma_mat);
h_s=sum(mat2_s(1,:)); h=mat2(1,:);
T=C; R=C*(sum(h(:))+h_s); S=0;
for i=N1:N2
    zi=zpowk(i);
    [E,dE,F,dF]=xdync(Adelta,dA+1,zi,i,C,dC);
    [Gtilda,dGtilda,Gbar,dGbar]=...
      xdync(C,dC,zi,i,E*B,dE+dB);
    S=S+F*h(i);
end
S=S+F_s*h_s;
if length(A)==3
   Kp=S(1)-R-S(3); Ki=R; Kd=S(3);
else
   Kp=S(1)-R; Ki=R; Kd=0;
end

endfunction; 
