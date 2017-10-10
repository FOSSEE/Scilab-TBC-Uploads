//Harriot P., 2003, Chemical Reactor Design (I-Edition), Marcel Dekker, Inc., USA, pp 436.
//Chapter-6 Ex6.2 Pg No. 239
//Title:Effect of diffusion on conversion for laminar flow 
//============================================================================================================
clear
clc
//INPUT
D=1*10^(-2);//Diameter of pipeline (m)
R=D/2;//Radius (m)
D_m=10^(-4);//Diffusivity (m2/sec)
k=1;//Reaction rate constant (sec-1)


//CALCULATION
alpha=D_m/(k*(R^2));//Refer topic ('Diffusion in laminar flow reactors') Pg No.239


//OUTPUT
if (alpha<=0.01) 
    then
    mprintf('\n The  effect of radial diffusion  on conversion can be neglected as alpha = %.0f',alpha )
else
    mprintf('\n The effect of radial diffusion makes conversion almost as same as plug flow as alpha = %.0f',alpha)
end

//FILE OUTPUT
fid= mopen('.\Chapter6-Ex2-Output.txt','w');
if (alpha<=0.01) 
    then
    mfprintf(fid,'\n The  effect of radial diffusion  on conversion can be neglected as alpha = %.0f',alpha )
else
    mfprintf(fid,'\n The effect of radial diffusion makes conversion almost as same as plug flow as alpha = %.0f',alpha)
end
mclose(fid);
//================================================END OF PROGRAM======================================================== 
