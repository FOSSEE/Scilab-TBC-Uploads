//clear//
//Caption:u-Law companding
//Figure5.13(a)Mulaw companding Nonlinear Quantization
//Plotting mulaw characteristics for different 
//Values of mu
clc;
x = 0:0.01:1; //Normalized input
mu = [0,5,255];//different values of mu
for i = 1:length(mu)
  [Cx(i,:),Xmax(i)] =  mulaw(x,mu(i));
end
plot2d(x/Xmax(1),Cx(1,:),2)
plot2d(x/Xmax(2),Cx(2,:),4)
plot2d(x/Xmax(3),Cx(3,:),6)
xtitle('Compression Law: u-Law companding','Normalized Input |x|','Normalized Output |c(x)|');
legend(['u =0'],['u=5'],['u=255'])
